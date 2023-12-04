import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritu_trainee/Bindings/page1_view.dart';
class MainOfBinding extends StatelessWidget {
  const MainOfBinding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bindings',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(child: const Text('navigate to page 1'),
        onPressed: (){
           //Get.to(()=>Page1View());
          Get.toNamed('/page1');
        },),
      ),
    );
  }
}
