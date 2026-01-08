import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/number_trivia.dart';
import '../models/number_trivia_model.dart';

abstract class NumberTriviaRemoteDatasource {
  /// calls the 
  Future<NumberTriviaModel> getConcreteNumberTrivia(int id);
}