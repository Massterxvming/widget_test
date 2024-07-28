import 'package:get/get.dart';
import 'package:widget_test/pages/home_page.dart';
import 'package:widget_test/state_controller/state_controller.dart';

import '../pages/List/ListPage.dart';

class AppRoutes{
  AppRoutes._();
  static AppRoutes get instance=>AppRoutes._();
  final getPages=[
    GetPage(name: '/ListPage', page:()=>const Listpage(),binding:BindingsBuilder ((){Get.put(StateController());})),
    GetPage(name: '/', page:()=>const MyHomePage(title: 'title'),binding:BindingsBuilder ((){Get.put(StateController());})),
  ];

  final HomePage='/';
  final ListPage='ListPage';
  final OtherPage='/';
}