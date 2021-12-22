class AreaModel {
  AreaModel({
    this.strArea,
  });

  String? strArea;

  factory AreaModel.fromJson(Map<String, dynamic> json) => AreaModel(
        strArea: json["strArea"],
      );

  Map<String, dynamic> toJson() => {
        "strArea": strArea,
      };
}
