import 'package:flutter/material.dart';

void main() => runApp(CatalogApp());

class CatalogApp extends StatelessWidget {
  const CatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Каталог',
      home: const CatalogPage(),
    );
  }
}
class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Каталог')),

      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          final itemNumber = index + 1;

          return ListTile(
            leading: const Icon(Icons.folder),
            title: Text('Элемент $itemNumber'),
            subtitle: Text('Описание элемента $itemNumber'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailPage(
                    title: 'Элемент $itemNumber',
                    description: 'Подробное описание элемента $itemNumber',
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  final String title;
  final String description;
  const DetailPage({super.key, required this.title, required this.description});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
        ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(widget.description),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: isFavorite ? null : toggleFavorite,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isFavorite ? Colors.green : Colors.blue,
                ),
                child: Text(
                  isFavorite
                      ? '❤ Добавлено в избранное'
                      : '♡ Добавить в избранное',
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Назад', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
