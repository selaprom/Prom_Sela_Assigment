import 'package:assigment1_app/detial_view/detial_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataProfile {
  final String name;
  DataProfile({required this.name});
}

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final List<DataProfile> _restaurant_name = [
    DataProfile(name: 'Ly Heng'),
    DataProfile(name: 'Chan Bopha'),
    DataProfile(name: 'Som Dara'),
    DataProfile(name: 'Chan Lyna'),
    DataProfile(name: 'Bo Sopheak'),
    DataProfile(name: 'Phan Rith'),
    DataProfile(name: 'Sin Kong'),
    DataProfile(name: 'Cheng Cheng'),
    DataProfile(name: 'Bun Thorn'),
  ];

  @override
  Widget build(BuildContext context) {
    return _customscrollview;
  }

  get _customscrollview {
    return CustomScrollView(slivers: [_appbarsliver, _listviewsliver]);
  }

  get _appbarsliver {
    return SliverAppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu, size: 30, color: Colors.white),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_on, color: Colors.white, size: 30),
        ),
      ],
      expandedHeight: 135,
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        expandedTitleScale: 1,
        title: SizedBox(
          height: 55,
          child: SearchBar(
            leading: Icon(Icons.search, color: Colors.grey),
            hintText: "Search",
          ),
        ),
        background: Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
          ),
        ),
      ),
      title: Text(
        "Rastuarant",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  get _listviewsliver {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      sliver: SliverList.builder(
        itemCount: _restaurant_name.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(DetialView(dataProfile: _restaurant_name[index]));
            },
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                  child: _rowwiget(index),
                ),
                Divider(height: 1),
              ],
            ),
          );
        },
      ),
    );
  }

  get _buildbody {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),

          child: Column(
            children: [
              Text(
                "Restuarant",

                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Expanded(
                child: ListView(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Search Shop Name",
                        hintStyle: TextStyle(fontSize: 18),
                        suffixIcon: Icon(Icons.search, size: 30),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: List.generate(_restaurant_name.length, (index) {
                        return Column(
                          children: [
                            Container(
                              height: 120,
                              width: double.infinity,
                              decoration: BoxDecoration(color: Colors.white),
                              child: _rowwiget(index),
                            ),
                            Divider(height: 1),
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rowwiget(int index) {
    return Row(
      spacing: 12,
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://www.foodbuzz.site/wp-content/uploads/2018/03/DSC_0734.jpg",
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
            color: Colors.yellow,
          ),
        ),
        Column(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _restaurant_name[index].name,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text("Restaurant", style: TextStyle(fontSize: 23)),
          ],
        ),
        Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          spacing: 12,
          children: [
            Text("No 09", style: TextStyle(fontSize: 25)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 3,
              children: [
                Icon(Icons.star, color: Colors.green),
                Text("5.0", style: TextStyle(fontSize: 18)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
