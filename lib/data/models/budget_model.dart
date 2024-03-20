
class BudgetModel {
  BudgetModel({
    this.budgetID,
    this.montant,
    this.mois,
    this.annee,
    this.utilisateurID,
  });

  int? utilisateurID;
  int? budgetID;
  double? montant;
  int? mois;
  int? annee;

  factory BudgetModel.fromJson(Map<String, dynamic> json) {
    return BudgetModel(
      budgetID: json['BudgetID'] as int?,
      utilisateurID: json['UtilisateurID'] as int?,
      montant: json['Montant'] as double?,
      mois: json['Mois'] as int?,
      annee: json['Annee'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
    'budgetID': budgetID,
    'utilisateurID': utilisateurID,
    'montant': montant,
    'mois': mois,
    'annee': annee,
  };
}
