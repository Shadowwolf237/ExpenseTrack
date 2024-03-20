import 'package:get/get.dart';

//import '../../../app/services/local_storage.dart';

class AuthController extends GetxController {
  AuthController();
  //final store = Get.find<LocalStorageService>();

 // User? get user => store.user;

  @override
  void onInit() async {
    super.onInit();
    //isLoggedIn.value = store.user != null;
  }


}
