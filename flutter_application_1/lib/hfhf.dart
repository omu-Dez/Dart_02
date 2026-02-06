import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const CalendarApp());
}

class CalendarApp extends StatelessWidget {
  const CalendarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // убираем debug баннер
      title: 'Календарь',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const CalendarPage(), // главный экран
    );
  }
}

/// ----------------------------
/// ЭКРАН КАЛЕНДАРЯ
/// ----------------------------
class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  // выбранный день пользователем
  DateTime _selectedDay = DateTime.now();

  // текущий отображаемый месяц
  DateTime _focusedDay = DateTime.now();

  // формат календаря (месяц / неделя / 2 недели)
  CalendarFormat _calendarFormat = CalendarFormat.month;

  // события: дата -> список событий
  final Map<DateTime, List<String>> _events = {};

  // получить события для конкретного дня
  List<String> _getEventsForDay(DateTime day) {
    // убираем время, оставляем только дату
    final key = DateTime(day.year, day.month, day.day);
    // если событий нет — возвращаем пустой список
    return _events[key] ?? [];
  }

  // добавление события
  void _addEvent() {
    final controller = TextEditingController(); // контроллер ввода

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Новое событие'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Название события',
          ),
        ),
        actions: [
          // кнопка отмены
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Отмена'),
          ),
          // кнопка добавления
          ElevatedButton(
            onPressed: () {
              // если текст не пустой
              if (controller.text.isNotEmpty) {
                final key = DateTime(
                  _selectedDay.year,
                  _selectedDay.month,
                  _selectedDay.day,
                );

                setState(() {
                  // если на дату нет событий — создаём список
                  _events.putIfAbsent(key, () => []);
                  // добавляем событие
                  _events[key]!.add(controller.text);
                });
              }
              Navigator.pop(context); // закрываем диалог
            },
            child: const Text('Добавить'),
          ),
        ],
      ),
    );
  }

  // удаление события
  void _removeEvent(String event) {
    final key = DateTime(
      _selectedDay.year,
      _selectedDay.month,
      _selectedDay.day,
    );

    setState(() {
      _events[key]?.remove(event); // удаляем событие
      // если список пуст — удаляем дату
      if (_events[key]?.isEmpty ?? false) {
        _events.remove(key);
      }
    });
  }

  // подтверждение удаления события
  void _confirmDelete(String event) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Удалить событие?'),
        content: Text(event),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Отмена'),
          ),
          ElevatedButton(
            onPressed: () {
              _removeEvent(event); // удаляем событие
              Navigator.pop(context); // закрываем диалог
            },
            child: const Text('Удалить'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // получаем события выбранного дня
    final events = _getEventsForDay(_selectedDay);

    return Scaffold(
      appBar: AppBar(
        title: const Text('📅 Календарь'),
      ),

      // кнопка добавления события
      floatingActionButton: FloatingActionButton(
        onPressed: _addEvent,
        child: const Icon(Icons.add),
      ),

      body: Column(
        children: [
          /// ---------------- КАЛЕНДАРЬ ----------------
          TableCalendar(
            firstDay: DateTime.utc(2020), // начало диапазона
            lastDay: DateTime.utc(2030),  // конец диапазона
            focusedDay: _focusedDay,

            // формат календаря
            calendarFormat: _calendarFormat,

            // начало недели — понедельник
            startingDayOfWeek: StartingDayOfWeek.monday,

            // изменение формата (месяц / неделя)
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },

            // выделение выбранного дня
            selectedDayPredicate: (day) {
              return isSameDay(day, _selectedDay);
            },

            // обработка выбора дня
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },

            // загрузка событий для маркеров
            eventLoader: _getEventsForDay,
          ),

          const SizedBox(height: 8),

          /// ---------------- ВЫБРАННАЯ ДАТА ----------------
          Text(
            'Выбрано: '
            '${_selectedDay.day}.${_selectedDay.month}.${_selectedDay.year}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          /// ---------------- СПИСОК СОБЫТИЙ ----------------
          Expanded(
            child: events.isEmpty
                ? const Center(
                    child: Text('На эту дату событий нет'),
                  )
                : ListView.builder(
                    itemCount: events.length,
                    itemBuilder: (_, index) => Card(
                      child: ListTile(
                        leading: const Icon(Icons.event),
                        title: Text(events[index]),
                        // долгое нажатие — удаление
                        onLongPress: () =>
                            _confirmDelete(events[index]),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
