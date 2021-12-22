const String _baseUrl = "https://www.themealdb.com/api/json/v1/1/";

class API {
  _Meal meal = _Meal();
  _Option option = _Option();

  static const String baseUrl = _baseUrl;
}

class _Meal {
  final String search = "search.php";
  final String filter = "filter.php";
  final String detail = "lookup.php";
}

class _Option {
  final String categories = "categories.php";
  final String list = "list.php";
}
