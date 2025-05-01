import 'package:csen268_hw3/pages/book/cubit/book_cubit.dart';
import 'package:csen268_hw3/widgets/book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialView extends StatelessWidget {
  const InitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: Text("Book Club Home"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Sort By"),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {
                    BlocProvider.of<BookCubit>(context).sortByAuthor();
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: const BorderSide(color: Colors.grey),
                    ),
                    backgroundColor:
                        BlocProvider.of<BookCubit>(context).sortBy == 'author'
                            ? const Color.fromARGB(255, 223, 223, 223)
                            : null,
                  ),
                  child: const Text(
                    'Author',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {
                    BlocProvider.of<BookCubit>(context).sortByTitle();
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: const BorderSide(color: Colors.grey),
                    ),
                    backgroundColor:
                        BlocProvider.of<BookCubit>(context).sortBy == 'title'
                            ? const Color.fromARGB(255, 223, 223, 223)
                            : null,
                  ),
                  child: const Text(
                    'Title',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text("Books", style: TextStyle(fontSize: 36)),
            SizedBox(
              height: 166.67,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:
                    BlocProvider.of<BookCubit>(context).books.map((book) {
                      return Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: GestureDetector(
                          onTap: () {
                            BlocProvider.of<BookCubit>(
                              context,
                            ).bookDetail(book);
                          },
                          child: BookImage(book: book),
                        ),
                      );
                    }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
