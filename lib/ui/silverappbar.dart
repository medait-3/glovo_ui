import 'package:blobs/blobs.dart';
import 'package:circle_list/circle_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../flare/controllerflre.dart';

class SilverAppBarr extends StatefulWidget {
  const SilverAppBarr({super.key});

  @override
  State<SilverAppBarr> createState() => _SilverAppBarrState();
}

class _SilverAppBarrState extends State<SilverAppBarr> {
  MyController? myController;

  @override
  void initState() {
    super.initState();
    myController = MyController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      title: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 241, 219, 151)),
        height: 35,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: const Center(
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                iconColor: Colors.grey,
                border: InputBorder.none,
                hintText: 'What can we get you ?',
                hintStyle: TextStyle(fontSize: 15),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 11),
        child: Stack(
          children: [
            Container(
              child: Blob.fromID(
                id: ['5-6-43178'],
                size: 55,
                styles: BlobStyles(
                  color: Color.fromARGB(255, 241, 219, 151),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Icon(
                  Icons.person_outline_outlined,
                  size: 21,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 11),
          child: Stack(
            children: [
              Container(
                child: Blob.fromID(
                  id: ['5-6-43178'],
                  size: 55,
                  styles: BlobStyles(
                    color: Color.fromARGB(255, 241, 219, 151),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: badges.Badge(
                  position: badges.BadgePosition.topEnd(top: -10, end: -6),
                  child: Container(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.redeem,
                      size: 21,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      expandedHeight: 600.0,
      pinned: true,
      elevation: 1,
      flexibleSpace: ClipPath(
        clipper: OvalBottomBorderClipper(),
        child: Container(
          child: FlexibleSpaceBar(
            background: Container(
              color: Colors.amber[500],
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(
                      height: 52,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Current location",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 26,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                      ),
                      child: CircleList(
                        innerRadius: 70,
                        childrenPadding: -40,
                        initialAngle: -12,
                        centerWidget: Blob.fromID(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_drop_down,
                                size: 48,
                                color: Colors.black,
                              ),
                              Text('I am a child!'),
                            ],
                          ),
                          size: 152,
                          id: ['5-6-43178'],
                          styles: BlobStyles(
                            color: Color.fromARGB(255, 246, 246, 242),
                          ),
                        ),
                        origin: Offset(0, 0),
                        children: List.generate(6, (index) {
                          return Stack(
                            children: [
                              Blob.fromID(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.arrow_drop_down,
                                      size: 48,
                                      color: Colors.black,
                                    ),
                                    Text('I child!'),
                                  ],
                                ),
                                size: 140,
                                id: ['5-6-43178'],
                                styles: BlobStyles(
                                  color: Color.fromARGB(255, 246, 246, 242),
                                ),
                              ),
                            ],
                          );
                        }),
                        onDragUpdate: (update) {
                          Offset point = Offset(
                              update.point.dx * 331, update.point.dy * 331);
                          myController!.lookAt(point);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
