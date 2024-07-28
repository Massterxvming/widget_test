

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_test/Routes/app_routes.dart';

import '../state_controller/state_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final r=Get.put(StateController());
  Rx<int> _counter = Rx(0);

  void _incrementCounter() {
    print('df');
    _counter.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
                    ()=>
                    Text(
                      '${_counter}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    )
            ),
            ElevatedButton(onPressed: (){
              Get.toNamed(AppRoutes.instance.ListPage);
            }, child: Text('od')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}