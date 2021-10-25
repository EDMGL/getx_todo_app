import 'package:flutter/material.dart';
import 'package:getx_todo_app/main.dart';
import 'package:getx_todo_app/task_controller.dart';
import 'package:get/get.dart';

class AddTask extends StatelessWidget {
   AddTask({ Key? key }) : super(key: key);

  TextEditingController textctrl= TextEditingController();
  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Add Task"),),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: TextFormField(
            controller: textctrl,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(onPressed: (){
            c.add(textctrl.text);
            Get.to(Home());
          }, child: Text("Add")),
        )
      ],),
    );
  }
}