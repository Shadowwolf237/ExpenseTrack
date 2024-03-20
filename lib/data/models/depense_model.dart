
class DepenseModel {
  DepenseModel({
    this.depenseID,
    this.utilisateurID,
    this.typeDepenseID,
    this.montant,
    this.dateDepense,
    this.estTousLesMois,
    this.description,
  });

  int? depenseID;
  int? utilisateurID;
  int? typeDepenseID;
  double? montant;
  DateTime? dateDepense;
  bool? estTousLesMois;
  String? description;


  factory DepenseModel.fromJson(Map<String, dynamic> json) {
    return DepenseModel(
      depenseID: json['DepenseID'] as int?,
      utilisateurID: json['UtilisateurID'] as int?,
      typeDepenseID: json['TypeDepenseID'] as int?,
      montant: json['Montant'] as double?,
      estTousLesMois: json['EstTousLesMois'] == null || json['EstTousLesMois'] == 0 ? false: true,
      description: json['Description'] as String?,
      dateDepense: json['DateDepense'] == null ? null : DateTime.parse(json['DateDepense'] as String),
    );
  }

  Map<String, dynamic> toJson() => {
    'depenseID': depenseID,
    'utilisateurID': utilisateurID,
    'typeDepenseID': typeDepenseID,
    'montant': montant,
    'estTousLesMois': estTousLesMois,
    'dateDepense': dateDepense?.toIso8601String(),
    'description': description,
  };
}
