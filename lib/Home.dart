import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.red,
              floating: true,
              automaticallyImplyLeading: false,
              pinned: true,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_sharp),
              ),
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left: 50, bottom: 18),
                title: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 37),
                      child: Text('John Doe'),
                    ),
                  ],
                ),
                background: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        "assets/images/1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 15,
                      bottom: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 22,
                            width: 42,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "Food",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            'John Doe',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '2616 Cardinal Lane,Garfield Heights,OH,Us',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              expandedHeight: 200,
            )
          ];
        },
        body: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Opening hours",
                              style: TextStyle(color: Colors.red),
                            ),
                            Text(
                              "8.29 AM - 8.29 AM",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.phone),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.mail),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.location_on)
                    ],
                  ),
                ),
                Divider(color: Colors.black.withOpacity(0.2)),
              ],
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: Colors.black.withOpacity(0.2),
                ),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 25,
                itemBuilder: (context, index) {
                  return TileWidget();
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomCart(),
    );
  }
}
