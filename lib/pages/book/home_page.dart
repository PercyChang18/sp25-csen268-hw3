import 'package:csen268_hw3/pages/book/cubit/book_cubit.dart';
import 'package:csen268_hw3/pages/book/views/detail_view.dart';
import 'package:csen268_hw3/pages/book/views/initial_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookCubit()..init(),
      child: BlocBuilder<BookCubit, BookState>(
        builder: (context, state) {
          switch (state) {
            case BookDetailView():
              return DetailView(book: state.book);
            case BookInitial():
            case BookAuthorView():
            case BookTitleView():
            default:
              return InitialView();
          }
        },
      ),
    );
  }
}
