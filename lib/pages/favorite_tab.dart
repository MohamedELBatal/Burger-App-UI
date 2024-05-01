import 'package:flutter/material.dart';

class FavoriteTab extends StatelessWidget {
  static const String routeName = "favorite";

  const FavoriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Favorite",
          ),
          backgroundColor: Colors.red,
        ),
        body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/1.png"),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0, top: 15),
                          child: Column(
                            children: [
                              Text(
                                "Cheese Burger",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Wendy's Burger",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                  child: InkWell(
                onTap: () {},
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(children: [
                    Image.asset("assets/images/2.png"),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0,top: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Hamburger ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Veggie Burger",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ))
            ])));
  }
}
