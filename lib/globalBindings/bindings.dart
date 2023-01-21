import 'package:e_commercefullproject/controller/authentic_controller.dart';
import 'package:get/get.dart';

class GlobalBindings extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<AutheticationController>(() => AutheticationController());
  }

}