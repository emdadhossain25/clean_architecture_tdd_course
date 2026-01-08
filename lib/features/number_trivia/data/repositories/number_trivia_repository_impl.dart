import 'package:clean_architecture_tdd_course/core/error/failures.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/data/datasources/number_trivia_local_datasource.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/data/datasources/number_trivia_remote_datasource.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/platform/network_info.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  late final NumberTriviaRemoteDatasource remoteDatasource;
  late final NumberTriviaLocalDatasource localDatasource;
  late final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl(
      {required this.remoteDatasource,
      required this.localDatasource,
      required this.networkInfo});

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia(int id) {
    throw UnimplementedError();
  }
}
