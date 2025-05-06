import 'package:flutter/material.dart';

import '../food/food_view.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(length: 2, child: _nestedscrollview),
    );
  }

  get _nestedscrollview {
    return NestedScrollView(
      headerSliverBuilder: (context, isScrollselected) {
        return [_appbarsliver];
      },
      body: TabBarView(
        children: [
          FoodView(
            image:
                "https://img.taste.com.au/V1mpwu4z/taste/2016/11/sharon-108893-2.jpeg",
          ),
          FoodView(
            image: "https://m.media-amazon.com/images/I/61hHue9PcbL.jpg",
          ),
        ],
      ),
    );
  }

  get _appbarsliver {
    return SliverAppBar(
      backgroundColor: Colors.white,
      pinned: false,
      centerTitle: true,
      title: Text(
        "All",
        style: TextStyle(
          color: Colors.green,
          fontSize: 27,
          fontWeight: FontWeight.bold,
        ),
      ),

      expandedHeight: 185,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        expandedTitleScale: 1,
        titlePadding: EdgeInsets.only(left: 15, right: 15, bottom: 75, top: 10),
        title: SizedBox(
          height: 60,
          child: SearchBar(
            leading: Icon(Icons.search, color: Colors.grey),
            hintText: "Search",
          ),
        ),
      ),

      bottom: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),

            borderRadius: BorderRadius.circular(10),
          ),
          height: 45,
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent,
            unselectedLabelStyle: TextStyle(color: Colors.grey),
            labelStyle: TextStyle(color: Colors.white),
            indicator: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8),
            ),

            tabs: [
              Tab(
                child: Text(
                  "Food",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "Beverage",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
