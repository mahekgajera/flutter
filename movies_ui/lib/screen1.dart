import 'package:flutter/material.dart';
import 'package:uiscreen/screen2.dart';

class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image(image: AssetImage('lib/assets/images/firstimage.jpg'),fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.only(top: 700,left: 10),
              child: TextButton(
                child: const Text('skip',style:TextStyle(color: Colors.white),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondRoute()),
                  );
                },
              ),
            ),
          ],

        ));
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen2(),
    );
  }
}
