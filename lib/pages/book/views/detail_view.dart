import 'package:csen268_hw3/pages/book/cubit/book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../model/book.dart';
import '../../../widgets/book_detail.dart';

class DetailView extends StatelessWidget {
  final Book book;
  const DetailView({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            BlocProvider.of<BookCubit>(context).init(); // Use pop to go back
          },
        ),
        title: Text("Book Detail"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: BookDetail(book: book),
        ),
      ),
    );
  }
}
