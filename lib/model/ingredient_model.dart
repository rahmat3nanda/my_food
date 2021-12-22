class IngredientModel {
  IngredientModel({
    this.idIngredient,
    this.strIngredient,
    this.strDescription,
    this.strType,
  });

  String? idIngredient;
  String? strIngredient;
  String? strDescription;
  String? strType;

  factory IngredientModel.fromJson(Map<String, dynamic> json) =>
      IngredientModel(
        idIngredient: json["idIngredient"],
        strIngredient: json["strIngredient"],
        strDescription: json["strDescription"],
        strType: json["strType"],
      );

  Map<String, dynamic> toJson() => {
        "idIngredient": idIngredient,
        "strIngredient": strIngredient,
        "strDescription": strDescription,
        "strType": strType,
      };
}
