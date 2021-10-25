import 'package:get/get.dart';

class Controller extends GetxController{
  List list =[].obs;
  add(item) => list.add(item);
  delete(item)=>list.removeAt(item);
}