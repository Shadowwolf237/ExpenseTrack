class UtilisateurModel {
  UtilisateurModel({
    this.utilisateurID,
    this.nom,
    this.email,
    this.motDePasse,
    this.codePin,
  });

  int? utilisateurID;
  String? nom;
  String? email;
  String? motDePasse;
  String? codePin;


  factory UtilisateurModel.fromJson(Map<String, dynamic> json) {
    return UtilisateurModel(
      utilisateurID: json['UtilisateurID'] as int?,
      nom: json['Nom'] as String?,
      email: json['Email'] as String?,
      motDePasse: json['MotDePasse'] as String?,
      codePin: json['CodePin'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'utilisateurID': utilisateurID,
    'nom': nom,
    'email': email,
    'motDePasse': motDePasse,
    'codePin': codePin,
  };
}