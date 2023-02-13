import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uiscreen/moviecard2.dart';

class favoritepage extends StatelessWidget {
  const favoritepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('lib/assets/images/avtar.jpg'),
                              radius: 24,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Erik Howell',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              radius: 24,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.cast_connected_outlined,
                                    color: Colors.deepPurple,
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Favorites',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                      ),Text('Edit',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Text(
                            'All',
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Text('Movies',
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontWeight: FontWeight.bold))
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Text('Serials',
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontWeight: FontWeight.bold))
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Text('TV Shows',
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontWeight: FontWeight.bold))
                        ],
                      ))
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      moviecard2(
                        image: Image(
                            image:
                                AssetImage('lib/assets/images/beauty.png')),
                        text: Text(
                          'Beauty And \nThe Beast',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        text2: Text(
                          '1 h 20 min',
                          style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold),
                        ),
                        text3: Text(
                          '8.2',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      moviecard2(
                        image: Image(
                            image:
                            AssetImage('lib/assets/images/zootopia.png')),
                        text: Text(
                          'Zootopia',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        text2: Text(
                          '2 h 30 min',
                          style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold),
                        ),
                        text3: Text(
                          '8.5',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      moviecard2(
                        image: Image(
                            image:
                            AssetImage('lib/assets/images/angrybirds.png')),
                        text: Text(
                          'Angry Birds',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        text2: Text(
                          '1 h 20 min',
                          style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold),
                        ),
                        text3: Text(
                          '8.3',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      moviecard2(
                        image: Image(
                            image:
                            AssetImage('lib/assets/images/alladin.png')),
                        text: Text(
                          'Alladin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        text2: Text(
                          '2 h 20 min',
                          style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold),
                        ),
                        text3: Text(
                          '8.8',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      moviecard2(
                        image: Image(
                            image:
                            AssetImage('lib/assets/images/freeguy.webp')),
                        text: Text(
                          'Free Guy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        text2: Text(
                          '1 h 30 min',
                          style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold),
                        ),
                        text3: Text(
                          '8.0',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
