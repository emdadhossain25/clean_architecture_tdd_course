import 'package:equatable/equatable.dart';

class NumberTrivia extends Equatable {
  final String quote;
  final int id;

  NumberTrivia({
    required this.quote,
    required this.id,
  });

  @override
  List<Object?> get props => [quote, id];

}
