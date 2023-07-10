import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uigolovo/ui/cardui.dart';
import 'package:uigolovo/ui/textbox.dart';

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
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 170.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 300,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18.0),
                            child: Image.network(
                              'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                                "ee",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                              Text(
                                "tt",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Container(
                          color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 7),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.moped_outlined,
                                  size: 20,
                                ),
                                Text(
                                  "PROMO",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: TextAdapter(
              textbox: "Section",
              color: Colors.amber,
              icon: Icons.aod_outlined,
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
                return CardUi(
                    t1: "Burgers",
                    t2: "-37%",
                    t3: "McDonalds",
                    t4: "83%",
                    t5: "(500)");
              },
              childCount: 3,
            ),
          ),
          SliverToBoxAdapter(
            child: TextAdapter(
              textbox: "Section",
              color: Colors.amber,
              icon: Icons.aod_outlined,
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
                return CardUi(
                    t1: "Burgers",
                    t2: "-37%",
                    t3: "McDonalds",
                    t4: "83%",
                    t5: "(500)");
              },
              childCount: 4,
            ),
          )
        ],
      ),

      // SliverList(
      //   delegate: SliverChildBuilderDelegate(
      //     (BuildContext context, int index) {
      //       return Column(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Row(
      //               children: [
      //                 Stack(
      //                   children: [
      //                     Padding(
      //                       padding: const EdgeInsets.only(left: 4.0),
      //                       child: ClipRRect(
      //                         borderRadius: BorderRadius.circular(50.0),
      //                         child: Container(
      //                           color: Colors.red,
      //                           height: 25,
      //                           width: 18,
      //                         ),
      //                       ),
      //                     ),
      //                     SizedBox(
      //                       width: 5,
      //                     ),
      //                     Icon(
      //                       Icons.aod_outlined,
      //                       size: 26,
      //                       color: Colors.black,
      //                     ),
      //                   ],
      //                 ),
      //                 Text(
      //                   "Sélection",
      //                   style: TextStyle(
      //                       fontWeight: FontWeight.bold, fontSize: 24),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Container(
      //             color: Colors.white,
      //             height: 100.0,
      //             child: Center(
      //               child: Text('$index', textScaleFactor: 5),
      //             ),
      //           ),
      //         ],
      //       );
      //     },
      //     childCount: 2,
      //   ),
      // ),
    );
  }
}
