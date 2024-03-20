import 'package:get/get.dart';
import '../../data/models/utilisateur_model.dart';
import '../../data/repositories/utilisateur_repository.dart';

class UtilisateurController extends GetxController {

  final UtilisateurRepository _utilisateurRepository = Get.find<UtilisateurRepository>();


  RxList<UtilisateurModel> listUtilisateurs = RxList<UtilisateurModel>([]);

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  fetchData() async {
   List<Map<String,dynamic>> dataResult = await _utilisateurRepository.queryAllRows();
   listUtilisateurs.value = dataResult.map((x) => UtilisateurModel.fromJson(x)).toList();
   print(dataResult);
   update();
  }

}
