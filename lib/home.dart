import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'ui/silverappbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SilverAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Container(
                                    color: Colors.red,
                                    height: 25,
                                    width: 18,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.aod_outlined,
                                size: 26,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          Text(
                            "Sélection",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 100.0,
                      child: Center(
                        child: Text('$index', textScaleFactor: 5),
                      ),
                    ),
                  ],
                );
              },
              childCount: 2,
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 1.0,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18.0),
                              child: Image.network(
                                'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 75.0, left: 9),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Container(
                                color: Colors.black.withOpacity(0.6),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    "Burgers",
                                    style: TextStyle(
                                        color: Colors.white,
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 115,
                            ),
                            child: Container(
                              color: Colors.amber,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "-37%",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
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
                                child: Text(
                                  "kfc",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
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
                                    Text(
                                      "83% (500)",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: 21,
            ),
          )
        ],
      ),
    );
  }
}
