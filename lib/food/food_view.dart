import 'package:flutter/material.dart';

class FoodView extends StatelessWidget {
  final String image;
  FoodView({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(6, (index) {
            return Container(
              // height: 240,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Text("Chicken"),
                  SizedBox(
                    height: 180,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 8,
                        children: List.generate(4, (index) {
                          return Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 140,
                                width: 170,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(image),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(
                                width: 170,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Chicken Fried",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text("10", style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                              ),
                              Text(
                                "Description .....",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                  ),
                  Divider(),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
