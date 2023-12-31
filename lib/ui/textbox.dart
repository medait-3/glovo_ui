import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextAdapter extends StatelessWidget {
  const TextAdapter(
      {super.key,
      required this.textbox,
      required this.color,
      required this.icon,
      this.iconclick});
  final String textbox;
  final Color color;
  final IconData icon;
  final iconclick;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0, top: 3),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Container(
                        color: color,
                        height: 18,
                        width: 18,
                      ),
                    ),
                  ),
                  Icon(
                    icon,
                    size: 26,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                textbox,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ],
          ),
          Icon(
            //<-- SEE HERE
            iconclick,
            color: Colors.black,
            size: 27,
          ),
        ],
      ),
    );
  }
}
