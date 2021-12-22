import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:my_food/bloc/option/option_event.dart';
import 'package:my_food/bloc/option/option_state.dart';
import 'package:my_food/data/request.dart';
import 'package:my_food/model/area_model.dart';
import 'package:my_food/model/category_model.dart';
import 'package:my_food/model/ingredient_model.dart';

export 'package:my_food/bloc/option/option_event.dart';
export 'package:my_food/bloc/option/option_state.dart';

class OptionBloc extends Bloc<OptionEvent, OptionState> {
  OptionBloc(OptionState initialState) : super(initialState) {
    on<OptionListEvent>((event, emit) async {
      emit(OptionInitialState());
      try {
        Response res = await Request().option.list(isArea: event.isArea);
        List<dynamic> data;
        if (event.isArea) {
          data = List<AreaModel>.from(
            json.decode(res.data["meals"]).map((x) => AreaModel.fromJson(x)),
          );
        } else {
          data = List<IngredientModel>.from(
            json.decode(res.data["meals"]).map(
                  (x) => IngredientModel.fromJson(x),
                ),
          );
        }
        emit(OptionListSuccessState(data: data));
      } catch (e) {
        emit(OptionListFailedState(error: e));
      }
    });
    on<OptionCategoriesEvent>((event, emit) async {
      emit(OptionInitialState());
      try {
        Response res = await Request().option.categories();
        List<CategoryModel> data = List<CategoryModel>.from(
          json.decode(res.data["meals"]).map((x) => CategoryModel.fromJson(x)),
        );
        emit(OptionCategoriesSuccessState(data: data));
      } catch (e) {
        emit(OptionCategoriesFailedState(error: e));
      }
    });
  }
}
