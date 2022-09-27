import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/app/data/services/storage/service.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:todoapp/app/modules/home/home_view.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Todo List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

