import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/data/repos/home_repo.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchnewestbook() async {
    var data = await apiService.get(
      endpoint:
          'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming',
    );

    List<BookModel> books = [];

    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }

    return right(books);
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchfeaturedbook() async {
    final data = await apiService.get(
      endpoint: 'volumes?Filtering=free-ebooks&q=subject:programming',
    );

    List<BookModel> books = [];

    if (data['items'] != null) {
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
    }

    return right(books);
  }
}
