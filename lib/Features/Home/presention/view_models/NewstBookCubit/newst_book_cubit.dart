import 'package:bloc/bloc.dart';
import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/data/repos/home_repo.dart';

part 'newst_book_state.dart';

class NewstBookCubit extends Cubit<NewstBookState> {
  final HomeRepo homeRepo;
  NewstBookCubit(this.homeRepo) : super(NewstBookInitial());

  Future<void> fetchNewstBook() async {
    emit(NewstBookLoading());
    var result = await homeRepo.fetchnewestbook();
    result.fold(
      (failure) {
        emit(NewstBookFailure(failure.errmessage));
      },
      (books) {
        emit(NewstBookSuccess(books));
      },
    );
  }
}
