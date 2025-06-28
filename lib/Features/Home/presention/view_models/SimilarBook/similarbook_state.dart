part of 'similarbook_cubit.dart';

sealed class SimilarbookState {}

final class SimilarbookInitial extends SimilarbookState {}

final class SimilarbookLoading extends SimilarbookState {}

final class SimilarbookSuccess extends SimilarbookState {
  final List<BookModel> books;
  SimilarbookSuccess(this.books);
}

final class SimilarbookFailure extends SimilarbookState {
  final String message;
  SimilarbookFailure(this.message);
}
