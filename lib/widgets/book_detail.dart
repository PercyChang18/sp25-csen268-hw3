import 'package:flutter/material.dart';

import '../model/book.dart';

class BookDetail extends StatelessWidget {
  final Book book;
  const BookDetail({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 220,
          child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Image.asset(
              book.imgUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                // Handle errors, for example, show a placeholder
                return Container(
                  color: Colors.grey[300],
                  child: const Center(child: Text('Error')),
                );
              },
            ),
          ),
        ),
        Text(
          book.title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(book.author, style: const TextStyle(fontSize: 18)),
        const SizedBox(height: 8),
        Text(book.description, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
