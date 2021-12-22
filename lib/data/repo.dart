import 'package:dio/dio.dart' as dio;
import 'package:my_food/data/api.dart';
import 'package:my_food/data/dio.dart';

late API _api;
late Dio _dio;

class Repo {
  late _Meal meal;
  late _Option option;

  Repo() {
    _api = API();
    _dio = Dio();
    meal = _Meal();
    option = _Option();
  }
}

class _Meal {
  Future<dio.Response> search({required Map<String, dynamic> param}) async {
    return await _dio.get(
      url: _api.meal.search,
      param: param,
    );
  }

  Future<dio.Response> filter({required Map<String, dynamic> param}) async {
    return await _dio.get(
      url: _api.meal.filter,
      param: param,
    );
  }

  Future<dio.Response> detail({required Map<String, dynamic> param}) async {
    return await _dio.get(
      url: _api.meal.detail,
      param: param,
    );
  }
}

class _Option {
  Future<dio.Response> list({required Map<String, dynamic> param}) async {
    return await _dio.get(
      url: _api.option.list,
      param: param,
    );
  }

  Future<dio.Response> categories() async {
    return await _dio.get(url: _api.option.categories);
  }
}
