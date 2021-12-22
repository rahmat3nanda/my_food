class AreaModel {
  AreaModel({
    this.id,
    this.strArea,
  });

  int? id;
  String? strArea;

  factory AreaModel.fromJson(Map<String, dynamic> json) => AreaModel(
        id: json["id"],
        strArea: json["strArea"],
      );

  Map<String, dynamic> toJson() => {
        if (id != null) "id": id,
        "strArea": strArea,
      };
}
