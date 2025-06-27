import 'package:bloc/bloc.dart';
import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/data/repos/home_repo.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  final HomeRepo homeRepo;

  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBookLoading());
    var result = await homeRepo.fetchfeaturedbook();
    result.fold(
      (failure) {
        emit(FeaturedBookFailure(failure.errmessage));
      },
      (books) {
        emit(FeaturedBookSuccess(books));
      },
    );
  }
}
