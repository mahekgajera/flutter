import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class moviecard2 extends StatelessWidget {
  final Image image;
  final Text text;
  final Text text2;
  final Text text3;

  const moviecard2(
      {Key? key, required this.image, required this.text, required this.text2, required this.text3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 110,
        width: 370,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  image,
                ],
              ),
              flex: 3,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: text,
                  ),
                  Container(child: text2)
                ],
              ),
              flex: 5,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [Expanded(child: Container(child: Icon(
                      Icons.star_rate_rounded,
                      color: Colors.amberAccent,
                    ),)),Expanded(child: text3)

                    ],
                  ),
                  
                ],
              ),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
