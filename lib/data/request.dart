import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:my_food/data/repo.dart';

late Repo _repo;

class Request {
  late _Meal meal;
  late _Option option;

  Request() {
    _repo = Repo();
    meal = _Meal();
    option = _Option();
  }
}

class _Meal{

}

class _Option{

}