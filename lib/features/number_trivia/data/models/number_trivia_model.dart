import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter/cupertino.dart';

class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({required super.quote, required super.id});

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(
        quote: json['quote'], id: (json['id'] as num).toInt());
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'quote': quote};
  }
}
