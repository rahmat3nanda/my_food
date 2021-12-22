import 'dart:convert';

class MealModel {
  MealModel({
    this.idMeal,
    this.strMeal,
    this.strDrinkAlternate,
    this.strCategory,
    this.strArea,
    this.strInstructions,
    this.strMealThumb,
    this.strTags,
    this.strYoutube,
    this.ingredients,
    this.measures,
    this.strSource,
    this.strImageSource,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  String? idMeal;
  String? strMeal;
  String? strDrinkAlternate;
  String? strCategory;
  String? strArea;
  String? strInstructions;
  String? strMealThumb;
  String? strTags;
  String? strYoutube;
  List<String>? ingredients;
  List<String>? measures;
  String? strSource;
  String? strImageSource;
  String? strCreativeCommonsConfirmed;
  String? dateModified;

  factory MealModel.fromJson(Map<String, dynamic> json) {
    List<String> i = [];
    List<String> m = [];
    json.forEach((key, value) {
      if (key.contains("strIngredient")) {
        i.add(value);
      }
    });
    json.forEach((key, value) {
      if (key.contains("strIngredient")) {
        i.add(value);
      }
      if (key.contains("strMeasure")) {
        m.add(value);
      }
    });
    return MealModel(
      idMeal: json["idMeal"],
      strMeal: json["strMeal"],
      strDrinkAlternate: json["strDrinkAlternate"],
      strCategory: json["strCategory"],
      strArea: json["strArea"],
      strInstructions: json["strInstructions"],
      strMealThumb: json["strMealThumb"],
      strTags: json["strTags"],
      strYoutube: json["strYoutube"],
      ingredients: i,
      measures: m,
      strSource: json["strSource"],
      strImageSource: json["strImageSource"],
      strCreativeCommonsConfirmed: json["strCreativeCommonsConfirmed"],
      dateModified: json["dateModified"],
    );
  }

  Map<String, dynamic> toJson() => {
        "idMeal": idMeal,
        "strMeal": strMeal,
        "strDrinkAlternate": strDrinkAlternate,
        "strCategory": strCategory,
        "strArea": strArea,
        "strInstructions": strInstructions,
        "strMealThumb": strMealThumb,
        "strTags": strTags,
        "strYoutube": strYoutube,
        "ingredients": jsonEncode(ingredients?.toList()),
        "measures": jsonEncode(measures?.toList()),
        "strSource": strSource,
        "strImageSource": strImageSource,
        "strCreativeCommonsConfirmed": strCreativeCommonsConfirmed,
        "dateModified": dateModified,
      };
}
