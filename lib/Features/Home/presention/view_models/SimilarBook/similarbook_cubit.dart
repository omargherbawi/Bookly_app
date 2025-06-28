import 'package:bloc/bloc.dart';
import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/data/repos/home_repo.dart';

part 'similarbook_state.dart';

class SimilarbookCubit extends Cubit<SimilarbookState> {
  final HomeRepo homeRepo;
  SimilarbookCubit(this.homeRepo) : super(SimilarbookInitial());

  Future<void> fetchsimilarbook(String category) async {
    emit(SimilarbookLoading());
    var result = await homeRepo.fetchsimilarbook(category: category);
    result.fold(
      (failure) {
        emit(SimilarbookFailure(failure.errmessage));
      },
      (books) {
        emit(SimilarbookSuccess(books));
      },
    );
  }
}
