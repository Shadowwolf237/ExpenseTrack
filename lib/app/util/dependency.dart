import 'package:get/get.dart';
import '../../data/database/database_provider.dart';
import '../../data/repositories/budget_repository.dart';
import '../../data/repositories/depense_repository.dart';
import '../../data/repositories/type_depense_repository.dart';
import '../../data/repositories/utilisateur_repository.dart';

class DependencyCreator {
  static init() {
    Get.put(DatabaseService(), permanent: true);
    Get.lazyPut(() => DepenseRepository(databaseService:Get.find()));
    Get.lazyPut(() => UtilisateurRepository(databaseService:Get.find()));
    Get.lazyPut(() => TypeDepenseRepository(databaseService:Get.find()));
    Get.lazyPut(() => BudgetRepository(databaseService:Get.find()));
  }
}
