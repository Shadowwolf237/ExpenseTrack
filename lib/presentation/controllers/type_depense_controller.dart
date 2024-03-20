import 'package:get/get.dart';
import '../../data/models/type_depense_model.dart';
import '../../data/repositories/type_depense_repository.dart';

class TypeDepenseController extends GetxController {

  final TypeDepenseRepository _typeDepenseRepository = Get.find<TypeDepenseRepository>();


  RxList<TypeDepenseModel> listTypeDepenses = RxList<TypeDepenseModel>([]);

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  fetchData() async {
   List<Map<String,dynamic>> dataResult = await _typeDepenseRepository.queryAllRows();
   listTypeDepenses.value = dataResult.map((x) => TypeDepenseModel.fromJson(x)).toList();
   print(dataResult);
   update();
  }

}
