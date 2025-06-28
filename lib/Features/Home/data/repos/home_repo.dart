import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchnewestbook();

  Future<Either<Failure, List<BookModel>>> fetchfeaturedbook();
  Future<Either<Failure, List<BookModel>>> fetchsimilarbook({
    required String category,
  });
}
