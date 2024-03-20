import 'dart:convert';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/models/utilisateur_model.dart';


const  userKey  = "userKey";

class LocalStorageService extends GetxService {
  SharedPreferences? _sharedPreferences;

  Future<LocalStorageService> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  UtilisateurModel? get user {
    final rawJson = _sharedPreferences?.getString(userKey);
    if (rawJson == null) {
      return null;
    }
    Map<String, dynamic> map = jsonDecode(rawJson);
    return UtilisateurModel.fromJson(map);
  }

  set user(UtilisateurModel? value) {
    if (value != null) {
      _sharedPreferences?.setString(userKey, json.encode(value.toJson()));
    } else {
      _sharedPreferences?.remove(userKey);
    }
  }
}
