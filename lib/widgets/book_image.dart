import 'package:csen268_hw3/model/book.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key, required this.book});
  final Book book;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
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
    );
  }
}
