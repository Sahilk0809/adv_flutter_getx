import 'package:adv_flutter_getx/view/counter.dart';
import 'package:adv_flutter_getx/view/employee_management_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const EmployeeManagementScreen(),
        ),
      ],
    );
  }
}
