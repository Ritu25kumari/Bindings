import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritu_trainee/Bindings/page1_controller.dart';
import 'package:ritu_trainee/Bindings/page2_view.dart';
class Page1View extends GetView<Page1Controller> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(controller.pagename,style: const TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text('Myself ${controller.myname}',style: TextStyle(fontSize: 18),),
            SizedBox(height: 10,),
            Text('The account balance is : \$ ${controller.balance} '),

            const SizedBox(height: 20),
            Card(
              color: Colors.teal[200],

              child: Column(children: [
                Text('CALCULATOR',style: TextStyle(fontWeight: FontWeight.bold),),
                Obx(()=> Text('The value of count1 : ${controller.count1}')),
                Obx(() => Text('The value of count2 : ${controller.count2}')),
                Obx(()=> Text('The sum of counts is  : ${controller.sum}')),
                Obx(()=> Text('The minus of counts is  : ${controller.minus}')),
                Obx(()=> Text('The multiply of counts is  : ${controller.multiply}')),
                Obx(()=> Text('The divide of counts is  : ${controller.divide}')),
              ],),
            ),

            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  controller.increament1();
                }, child: const Text('count1++')),
                ElevatedButton(onPressed: (){
                  controller.increament2();
                }, child: const Text('count2++')),
              ],
            ),

            ElevatedButton(child: const Text('navigate to page 2'),
              onPressed: (){
                //Get.to(()=>Page2View());
                Get.toNamed('/page2');
              },),
            ElevatedButton(child: const Text('go back'),
              onPressed: (){
                Get.back();
              },),
          ],
        ),
      ),
    );
  }

}
// class Student () {
// String name;
// int age;
// Student({this.name ='dev',this.age=21 })
// }
