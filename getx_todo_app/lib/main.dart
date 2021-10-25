import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todo_app/add_task.dart';
import 'package:getx_todo_app/task_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo', theme: ThemeData.dark(), home: Home());
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final Controller c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("ToDo List"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddTask());
        },
        child: const Icon(Icons.add),
      ),
      body: Obx(() {
        return ListView.builder(
            itemCount: c.list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(c.list[index]),

                trailing: IconButton(
                  onPressed: () {
                    c.delete(index);
                  },
                  icon: Icon(Icons.done),
                ),
              );
            });
      }),
    );
  }
}
