import 'package:flutter/material.dart';

import '../model/book.dart';

class BookAvatar extends StatelessWidget {
  const BookAvatar({super.key, required this.book});
  final Book book;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(child: Text('${book.title}${book.author}'));
  }
}
