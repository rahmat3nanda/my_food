import 'package:equatable/equatable.dart';
import 'package:my_food/model/meal_model.dart';

abstract class MealState extends Equatable {
  const MealState();

  @override
  List<Object> get props => [];
}

class MealInitialState extends MealState {}

class MealSearchSuccessState extends MealState {
  final List<MealModel> data;

  const MealSearchSuccessState({required this.data});
}

class MealSearchFailedState extends MealState {
  final Object? error;

  const MealSearchFailedState({required this.error});
}

class MealFilterSuccessState extends MealState {
  final List<MealModel> data;

  const MealFilterSuccessState({required this.data});
}

class MealFilterFailedState extends MealState {
  final Object? error;

  const MealFilterFailedState({required this.error});
}

class MealDetailSuccessState extends MealState {
  final MealModel data;

  const MealDetailSuccessState({required this.data});
}

class MealDetailFailedState extends MealState {
  final Object? error;

  const MealDetailFailedState({required this.error});
}