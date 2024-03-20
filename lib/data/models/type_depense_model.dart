
class TypeDepenseModel {
  TypeDepenseModel({
    this.typeDepenseID,
    this.nom,
    this.icon
  });

  int? typeDepenseID;
  String? nom;
  String? icon;


  factory TypeDepenseModel.fromJson(Map<String, dynamic> json) {
    return TypeDepenseModel(
      typeDepenseID: json['TypeDepenseID'] as int?,
      nom: json['Nom'] as String?,
      icon: json['Icon'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'typeDepenseID': typeDepenseID,
    'nom': nom,
    'icon': icon
  };
}
