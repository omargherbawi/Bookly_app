import 'package:bloc/bloc.dart';
import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:meta/meta.dart';

part 'similarbook_state.dart';

class SimilarbookCubit extends Cubit<SimilarbookState> {
  SimilarbookCubit() : super(SimilarbookInitial());
}
