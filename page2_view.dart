import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritu_trainee/Bindings/page2_controller.dart';
class Page2View extends GetView<Page2Controller> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(controller.pageName,style: const TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text('Name of Student is : ${controller.name}',),
            ElevatedButton(child: const Text('back'),
            onPressed: (){Get.back();
            },),
          ],
        ),
      ),
    );
  }
}
