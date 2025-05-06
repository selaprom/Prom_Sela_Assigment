import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_view.dart';
import '../menu/menu_view.dart';
import '../order/order_view.dart';
import 'custom_bottomnavigationbar.dart';
import 'custombottomnavigation_controller.dart';

class HomeScreen extends GetView {
  HomeScreen({super.key});
  final _controller = Get.put(CustombottomnavigationController());
  List _lst = [
    HomeView(),
    MenuView(),
    OrderView(),
    Container(color: Colors.amber),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        body: _lst[_controller.selectedindex.value],
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
