import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import '../database/database_provider.dart';
import '../models/utilisateur_model.dart';

class UtilisateurRepository extends GetxService{

  final DatabaseService _databaseService;

  UtilisateurRepository({required DatabaseService databaseService})
      : _databaseService = databaseService;

  static const _table = 'Utilisateur';

  Future<int> insert(UtilisateurModel utilisateur) async {
    final Database database = await _databaseService.database;
    return await database.insert(_table, utilisateur.toJson());
  }

  Future<List<Map<String,dynamic>>> queryAllRows() async {
    final Database database = await _databaseService.database;
    return await database.query(_table);
  }

  Future<int> delete(int id) async {
    final Database database = await _databaseService.database;
    return await database.delete(_table, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> deleteAll() async {
    final Database database = await _databaseService.database;
    return await database.delete(_table);
  }

  Future<int> update(int id)async{
    final Database database = await _databaseService.database;
    return await database.rawUpdate('''
    UPDATE $_table
    SET isCompleted = ?, color = ?
    WHERE id = ?
    ''',[1, 1, id]);
  }

}
