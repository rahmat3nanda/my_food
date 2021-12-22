import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:my_food/bloc/meal/meal_event.dart';
import 'package:my_food/bloc/meal/meal_state.dart';
import 'package:my_food/data/request.dart';
import 'package:my_food/model/meal_model.dart';

export 'package:my_food/bloc/meal/meal_event.dart';
export 'package:my_food/bloc/meal/meal_state.dart';

class MealBloc extends Bloc<MealEvent, MealState> {
  MealBloc(MealState initialState) : super(initialState) {
    on<MealSearchEvent>((event, emit) async {
      emit(MealInitialState());
      try {
        Response res = await Request().meal.search(keyword: event.keyword);
        List<MealModel> data = List<MealModel>.from(
          json.decode(res.data["meals"]).map((x) => MealModel.fromJson(x)),
        );
        emit(MealSearchSuccessState(data: data));
      } catch (e) {
        emit(MealSearchFailedState(error: e));
      }
    });
    on<MealFilterEvent>((event, emit) async {
      emit(MealInitialState());
      try {
        Response res = await Request().meal.filter(
              category: event.category,
              area: event.area,
              ingredient: event.ingredient,
            );
        List<MealModel> data = List<MealModel>.from(
          json.decode(res.data["meals"]).map((x) => MealModel.fromJson(x)),
        );
        emit(MealFilterSuccessState(data: data));
      } catch (e) {
        emit(MealFilterFailedState(error: e));
      }
    });
    on<MealDetailEvent>((event, emit) async {
      emit(MealInitialState());
      try {
        Response res = await Request().meal.detail(event.id);
        List<MealModel> data = List<MealModel>.from(
          json.decode(res.data["meals"]).map((x) => MealModel.fromJson(x)),
        );
        emit(MealDetailSuccessState(data: data.first));
      } catch (e) {
        emit(MealDetailFailedState(error: e));
      }
    });
  }
}
