import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custombottomnavigation_controller.dart';

class CustomBottomNavigationBar extends GetView {
  CustomBottomNavigationBar({super.key});
  final _controller = Get.put(CustombottomnavigationController());
  List _lstIcons = [
    Icons.home,
    Icons.ramen_dining,
    Icons.menu_book,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 90,
        decoration: BoxDecoration(color: Colors.transparent),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(_lstIcons.length, (index) {
                    return _iconwidget(_lstIcons[index], index);
                  }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconwidget(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        _controller.changetab(index);
      },
      child: Icon(
        icon,
        size: _controller.selectedindex.value == index ? 40 : 35,
        color:
            _controller.selectedindex.value == index
                ? Colors.white
                : Colors.white54,
      ),
    );
  }
}
