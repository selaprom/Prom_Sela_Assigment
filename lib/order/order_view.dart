import 'package:flutter/material.dart';

class OrderView extends StatelessWidget {
  OrderView({super.key});
  List _lstimage = [
    "https://i.ytimg.com/vi/1LtXG6CQmZc/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCbMu7GyfwSnB6RykccN6eacF_b8w",
    "https://www.coca-cola.com/content/dam/onexp/nz/en/offerings/mycoke/content-card-1102x827_purchase.jpg",
    "https://nebraskastarbeef.com/wp-content/uploads/2022/09/52913995_m-scaled.jpg",
    "https://passthesushi.com/wp-content/uploads/2011/09/Roast_beef12.jpg",
    "https://cicili.tv/wp-content/uploads/2021/10/IMG_0037-scaled-1200x675.jpg",
    "https://media.istockphoto.com/id/1094274006/photo/bok-lahong-green-papaya-salad-recipe-from-cambodia.jpg?s=170667a&w=0&k=20&c=4alOtv6YZTUL5cUr8bPcImbyHWUKyUAzsNfEjNOSh2U=",
    "https://s3.ap-southeast-1.wasabisys.com/sliquors3/wp-content/uploads/2020/07/Vital-500ml-01.png",
    "https://i.ytimg.com/vi/1LtXG6CQmZc/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCbMu7GyfwSnB6RykccN6eacF_b8w",
    "https://i.ytimg.com/vi/1LtXG6CQmZc/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCbMu7GyfwSnB6RykccN6eacF_b8w",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Scaffold(backgroundColor: Colors.white, body: _buildbody),
      ),
    );
  }

  get _buildbody {
    return Column(
      children: [
        _rowappbar,
        SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
            itemCount: _lstimage.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(_lstimage[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 98,
                        width: 120,
                      ),
                      SizedBox(width: 20),
                      _custom_column(
                        "Fish Grail",
                        "foods description",
                        "Cancel",
                      ),
                      Spacer(),
                      _custom_column("\$${10}", "01", "Ok"),
                    ],
                  ),
                  Divider(),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _custom_column(String title, String description, String _bottom) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 7,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(description),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Text(
              _bottom,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: _bottom == "Cancel" ? Colors.red : Colors.green,
          ),
        ),
      ],
    );
  }

  get _rowappbar {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Order List",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        GestureDetector(
          onTap: () {
            print("1");
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 7,
                bottom: 7,
              ),
              child: Center(
                child: Text(
                  "Accept",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
