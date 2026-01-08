import 'dart:ffi';
import 'package:clean_architecture_tdd_course/features/number_trivia/data/models/number_trivia_model.dart';

abstract class NumberTriviaLocalDatasource {
  Future<NumberTriviaModel> getLastNumberTrivia();
  Future<Void> cacheNumberTriviaModel(NumberTriviaModel triviaToCache);
}