import 'package:get/get.dart';
import 'package:ritu_trainee/Bindings/page1_controller.dart';
import 'package:ritu_trainee/Bindings/page2_controller.dart';
import 'package:ritu_trainee/product_discription/controllerpage.dart';
class AllBindings extends Bindings{
  void dependencies() {
   Get.lazyPut(() => Page1Controller());
   Get.lazyPut(() => Page2Controller());
   Get.lazyPut(() => ProductController());
  }
}