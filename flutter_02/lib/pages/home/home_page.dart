import 'package:flutter/material.dart';
import 'package:flutter_02/pages/add_todo_page/add_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Task> tasks = [];

  void navigateToAddTodoPage() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const AddTodoPage()),
    );

    if (result != null && result.isNotEmpty) {
      setState(() {
        tasks.add(Task(result));
      });
    }
  }

  void toggleTask(int index) {
    setState(() {
      tasks[index].isDone = !tasks[index].isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Мои задачи"),
        ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: tasks.length,
        itemBuilder: (_, index) {
          final task = tasks[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => toggleTask(index),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: task.isDone
                        ? const Icon(Icons.check, size: 20)
                        : null,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    task.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      decoration: task.isDone
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: navigateToAddTodoPage,
        child: const Icon(Icons.add),
      ),
    );
  }
}
class Task {
  String title;
  bool isDone;
  Task(this.title, {this.isDone = false});
}
