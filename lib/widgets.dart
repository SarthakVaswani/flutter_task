import 'package:flutter/material.dart';

class TileWidget extends StatefulWidget {
  const TileWidget({Key? key}) : super(key: key);

  @override
  _TileWidgetState createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/1.jpg',
                height: 70,
                fit: BoxFit.cover,
                width: 70,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Protein X',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    'Demo Description about the product',
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '\u{20B9}2000',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      '\u{20B9}3000',
                      style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.black.withOpacity(0.45)),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      '1000\u{20B9} off',
                      style: TextStyle(color: Colors.green, fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: OutlineButton(
              borderSide: BorderSide(color: Colors.red),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.red,
                  ),
                  Text(
                    "Add",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BottomCart extends StatelessWidget {
  const BottomCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59,
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      Text(
                        '15 Items',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        '\u{20B9}32,42,414',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Text(
                        'plus taxes',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                OutlineButton(
                  borderSide: BorderSide(color: Colors.white),
                  onPressed: () {},
                  child: Text(
                    "View Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
