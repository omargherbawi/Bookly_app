part of 'newst_book_cubit.dart';

@immutable
sealed class NewstBookState {}

final class NewstBookInitial extends NewstBookState {}

final class NewstBookBookLoading extends NewstBookState {}

final class NewstBookSuccess extends NewstBookState {
  final List<BookModel> books;
  NewstBookSuccess(this.books);
}

final class NewstBookFailure extends NewstBookState {
  final String message;
  NewstBookFailure(this.message);
}
