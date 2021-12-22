import 'package:equatable/equatable.dart';
import 'package:my_food/model/category_model.dart';

abstract class OptionState extends Equatable {
  const OptionState();

  @override
  List<Object> get props => [];
}

class OptionInitialState extends OptionState {}

class OptionListSuccessState extends OptionState {
  final List<dynamic> data;

  const OptionListSuccessState({required this.data});
}

class OptionListFailedState extends OptionState {
  final Object? error;

  const OptionListFailedState({required this.error});
}

class OptionCategoriesSuccessState extends OptionState {
  final List<CategoryModel> data;

  const OptionCategoriesSuccessState({required this.data});
}

class OptionCategoriesFailedState extends OptionState {
  final Object? error;

  const OptionCategoriesFailedState({required this.error});
}
