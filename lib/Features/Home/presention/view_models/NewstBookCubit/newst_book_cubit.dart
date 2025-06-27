import 'package:bloc/bloc.dart';
import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:meta/meta.dart';

part 'newst_book_state.dart';

class NewstBookCubit extends Cubit<NewstBookState> {
  NewstBookCubit() : super(NewstBookInitial());
}
