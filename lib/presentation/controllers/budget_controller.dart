import 'package:get/get.dart';
import '../../data/models/budget_model.dart';
import '../../data/repositories/budget_repository.dart';

class BudgetController extends GetxController {

  final BudgetRepository _depenseRepository = Get.find<BudgetRepository>();


  RxList<BudgetModel> listBudgets = RxList<BudgetModel>([]);

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  fetchData() async {
    List<Map<String,dynamic>> dataResult = await _depenseRepository.queryAllRows();
    listBudgets.value = dataResult.map((x) => BudgetModel.fromJson(x)).toList();
    print(dataResult);
    update();
  }

}
