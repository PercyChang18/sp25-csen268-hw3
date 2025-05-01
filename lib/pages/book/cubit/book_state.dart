part of 'book_cubit.dart';

@immutable
sealed class BookState {}

final class BookInitial extends BookState {}

final class BookLoading extends BookState {}

final class BookAuthorView extends BookState {}

final class BookTitleView extends BookState {}

final class BookDetailView extends BookState {
  final Book book;
  BookDetailView({required this.book});
}
