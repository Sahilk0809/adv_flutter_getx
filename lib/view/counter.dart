import 'package:adv_flutter_getx/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.account_circle_outlined),
        title: const Text('Counter'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${counterController.count}',
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterController.decrement();
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              counterController.increment();
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
