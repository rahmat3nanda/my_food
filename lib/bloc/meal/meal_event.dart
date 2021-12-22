import 'package:equatable/equatable.dart';

abstract class MealEvent extends Equatable {
  const MealEvent();

  @override
  List<Object> get props => [];
}

class MealSearchEvent extends MealEvent {
  final String keyword;

  const MealSearchEvent({required this.keyword});

  @override
  String toString() => 'MealSearchEvent';
}

class MealFilterEvent extends MealEvent {
  final String? category;
  final String? area;
  final String? ingredient;

  const MealFilterEvent({this.category, this.area, this.ingredient});

  @override
  String toString() => 'MealFilterEvent';
}

class MealDetailEvent extends MealEvent {
  final String id;

  const MealDetailEvent(this.id);

  @override
  String toString() => 'MealDetailEvent';
}
