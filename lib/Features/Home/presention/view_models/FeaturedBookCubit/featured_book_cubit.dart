import 'package:bloc/bloc.dart';
import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit() : super(FeaturedBookInitial());
}
