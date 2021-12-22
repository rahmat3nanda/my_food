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

class _Meal {
  Future<dio.Response> search({required String keyword}) {
    return _repo.meal.search(param: {"s": keyword});
  }

  Future<dio.Response> filter({
    String? category,
    String? area,
    String? ingredient,
  }) {
    return _repo.meal.filter(param: {
      if (category != null) "c": category,
      if (area != null) "a": area,
      if (ingredient != null) "i": ingredient,
    });
  }

  Future<dio.Response> detail(String id) {
    return _repo.meal.detail(param: {"i": id});
  }
}

class _Option {
  Future<dio.Response> list({required bool isArea}) {
    return _repo.option.list(param: {(isArea ? "a" : "i"): "list"});
  }

  Future<dio.Response> categories() {
    return _repo.option.categories();
  }
}
