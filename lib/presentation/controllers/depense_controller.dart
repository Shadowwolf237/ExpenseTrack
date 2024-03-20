import 'package:get/get.dart';
import '../../data/models/depense_model.dart';
import '../../data/repositories/depense_repository.dart';

class DepenseController extends GetxController {

  final DepenseRepository _depenseRepository = Get.find<DepenseRepository>();


  RxList<DepenseModel> listDepenses = RxList<DepenseModel>([]);

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  fetchData() async {
    List<Map<String,dynamic>> dataResult = await _depenseRepository.queryAllRows();
    listDepenses.value = dataResult.map((x) => DepenseModel.fromJson(x)).toList();
    print(dataResult);
    update();
  }

}

