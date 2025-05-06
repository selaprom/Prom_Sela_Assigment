import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_view.dart';

class DetialView extends StatelessWidget {
  final DataProfile dataProfile;
  DetialView({super.key, required this.dataProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Text(dataProfile.name, style: TextStyle(fontSize: 35)),
      ),
    );
  }
}
