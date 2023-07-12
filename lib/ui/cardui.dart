import 'package:flutter/material.dart';

class CardUi extends StatelessWidget {
  const CardUi({
    super.key,
    required this.t1,
    required this.t2,
    required this.t3,
    required this.t4,
    required this.t5,
  });
  final String t1;
  final String t2;
  final String t3;
  final String t4;
  final String t5;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none, // <-- add this
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18.0),
                child: Image.network(
                  'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75.0, left: 9, right: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Container(
                        color: Colors.black.withOpacity(0.6),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            t1,
                            style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.star,
                      size: 19,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -4,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 104,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Container(
                      color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3.0, horizontal: 7),
                        child: Text(
                          t2,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              top: 6,
            ),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(t3,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ))),
                SizedBox(
                  height: 5,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        Icon(
                          Icons.thumb_up_off_alt,
                          size: 18,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              t4,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                            Text(
                              t5,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
