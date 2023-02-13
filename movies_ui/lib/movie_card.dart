import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class moviecard extends StatelessWidget {
  final Color color;
  final Image image;
  final Text text;
  final Text text2;

  const moviecard(
      {Key? key,
      required this.color,
      required this.image,
      required this.text,
      required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          children: <Widget>[
            Column(
              children: [
                Container(
                    height: 180,
                    width: 130,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: image)
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [text],
            ),
            Row(
              children: [
                Expanded(
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star_rate_rounded,
                        color: Colors.amberAccent,
                        size: 15,
                      ),text2
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
