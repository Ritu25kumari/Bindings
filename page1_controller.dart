import 'package:get/get.dart';
class Page1Controller extends GetxController{
  var pagename = 'PAGE ONE';
  RxString myname = 'Ritu'.obs;
  RxInt count1 = 0.obs;
  RxInt count2 = 0.obs;
  var balance = RxDouble(25.6 );
  RxInt get  sum => (count1.value+ count2.value).obs;
  RxInt get  minus => (count1.value - count2.value).obs;
  RxInt get  multiply => (count1.value* count2.value).obs;
  RxDouble get  divide => (count1.value / count2.value).obs;

  RxBool enroll= (false).obs;
  //var count = 0.obs;
  void increament1(){
    count1.value++;
  }
  void increament2(){
    count2.value++;
  }
}
