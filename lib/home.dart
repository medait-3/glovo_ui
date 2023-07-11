import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uigolovo/ui/bigcard.dart';
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
          SilverAppBarr(),
          SliverToBoxAdapter(
            child: TextAdapter(
              textbox: "Section",
              color: Colors.blueAccent,
              icon: Icons.tour_sharp,
            ),
          ),
          SliverToBoxAdapter(
            child: BigCard(),
          ),
          SliverToBoxAdapter(
            child: TextAdapter(
              textbox: "Top seles",
              color: Colors.amberAccent,
              icon: Icons.tour_sharp,
              iconclick: Icons.arrow_right_alt,
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
              textbox: "Top seles",
              color: Colors.redAccent,
              icon: Icons.tour_sharp,
              iconclick: Icons.arrow_right_alt,
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
    );
  }
}
