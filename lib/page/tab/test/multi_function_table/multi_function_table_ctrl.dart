import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class Person {
  String name;
  String area;
  int age;
  Person({required this.name, required this.area, required this.age});
}

class MultiFunctionTableCtrl extends GetxController {
  late TextEditingController textEditingController = TextEditingController();
  List<String> titleList = ["name", "area", "age"];
  RxList<Person> userList = [
    Person(name: "Alice", area: "Beijing", age: 25),
    Person(name: "Bob", area: "Shanghai", age: 30),
    Person(name: "Charlie", area: "Guangzhou", age: 28),
    Person(name: "David", area: "Shenzhen", age: 22),
    Person(name: "Eve", area: "Hangzhou", age: 27),
    Person(name: "Frank", area: "Chengdu", age: 35),
    Person(name: "Grace", area: "Wuhan", age: 24),
    Person(name: "Hannah", area: "Xi'an", age: 29),
    Person(name: "Ivan", area: "Nanjing", age: 31),
    Person(name: "Jack", area: "Suzhou", age: 26),
    Person(name: "Kate", area: "Beijing", age: 23),
    Person(name: "Leo", area: "Shanghai", age: 32),
    Person(name: "Mona", area: "Guangzhou", age: 28),
    Person(name: "Nina", area: "Shenzhen", age: 21),
    Person(name: "Oscar", area: "Hangzhou", age: 34),
    Person(name: "Paul", area: "Chengdu", age: 29),
    Person(name: "Quinn", area: "Wuhan", age: 27),
    Person(name: "Rose", area: "Xi'an", age: 33),
    Person(name: "Sam", area: "Nanjing", age: 25),
    Person(name: "Tina", area: "Suzhou", age: 30),
  ].obs;

  List<Person> selectList = [];

  int columnIndex = 0;

  bool ascending = true;

  VoidCallback? onChangeText(Person userItem, int index) {
    Person item = userList.firstWhere((e) => e == userItem);
    if (index == 0) {
      item.name = textEditingController.text;
    } else {
      item.area = textEditingController.text;
    }
    update();
    Get.back();
  }

  void onSort(int columnIndex, bool ascending) {
    this.columnIndex = columnIndex;
    this.ascending = ascending;
    listSord(ascending);
    update();
  }

  void listSord(bool ascending) {
    switch (columnIndex) {
      case 0:
        userList.sort((user1, user2) {
          if (ascending) {
            return user1.name.compareTo(user2.name);
          }
          return user2.name.compareTo(user1.name);
        });
      case 1:
        userList.sort((user1, user2) {
          if (ascending) {
            return user1.area.compareTo(user2.area);
          }
          return user2.area.compareTo(user1.area);
        });
      case 2:
        userList.sort((user1, user2) {
          if (ascending) {
            return user1.age.compareTo(user2.age);
          }
          return user2.age.compareTo(user1.age);
        });
    }
  }
}
