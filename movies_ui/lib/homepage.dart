import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uiscreen/movie_card.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child: Column(children: [
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
                      'Movie, Series,     \nTV Shows...',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Positioned(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(60)),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search',
                                    fillColor: Colors.grey.shade300,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    prefixIcon: const Icon(
                                      Icons.search,
                                      color: Colors.deepPurple,
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(60)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        flex: 6,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(

                              backgroundColor: Colors.deepPurple,
                              radius: 24,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.tune_outlined,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Positioned(
                  top: 300,
                  left: 0,
                  bottom: 80,
                  right: 0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Newest',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              moviecard(
                                  color: Colors.teal.shade50,
                                  image: Image(
                                      image: AssetImage(
                                          'lib/assets/images/soul.png')),
                                  text: Text(
                                    'Soul',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                text2: Text('8.5',style: TextStyle(
                                    fontWeight: FontWeight.bold,fontSize: 12)),),
                              moviecard(
                                  color: Colors.blue.shade50,
                                  image: Image(
                                      image: AssetImage(
                                          'lib/assets/images/freeguy.webp')),
                                  text: Text('Free Guy',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                text2: Text('9.0',style: TextStyle(
                                    fontWeight: FontWeight.bold,fontSize: 12)),),
                              moviecard(
                                  color: Colors.red.shade50,
                                  image: Image(
                                      image:
                                          AssetImage('lib/assets/images/bw.png')),
                                  text: Text('Black Widow',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                text2: Text('7.2',style: TextStyle(
                                    fontWeight: FontWeight.bold,fontSize: 12)),),
                              moviecard(
                                  color: Colors.amber.shade100,
                                  image: Image(
                                      image: AssetImage(
                                          'lib/assets/images/beauty.png')),
                                  text: Text('Beauty and \n the Beast',
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold)),
                                text2: Text('8.0',style: TextStyle(
                                    fontWeight: FontWeight.bold,fontSize: 12)),)
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Popular',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              moviecard(
                                  color: Colors.purple.shade100,
                                  image: Image(
                                      image: AssetImage(
                                          'lib/assets/images/alladin.png')),
                                  text: Text('Alladin',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                              text2: Text('8.5',style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 12)),),
                              moviecard(
                                  color: Colors.amber.shade100,
                                  image: Image(
                                      image: AssetImage(
                                          'lib/assets/images/beauty.png')),
                                  text: Text('Beauty and \n the Beast',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                text2: Text('8.0',style: TextStyle(
                                    fontWeight: FontWeight.bold,fontSize: 12)),),
                              moviecard(
                                  color: Colors.blue.shade100,
                                  image: Image(
                                      image: AssetImage(
                                          'lib/assets/images/zootopia.png')),
                                  text: Text('Zootpia',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                text2: Text('8.7',style: TextStyle(
                                    fontWeight: FontWeight.bold,fontSize: 12)),),
                              moviecard(
                                  color: Colors.pink.shade50,
                                  image: Image(
                                      image:
                                          AssetImage('lib/assets/images/bw.png')),
                                  text: Text('Black Widow',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                text2: Text('7.9',style: TextStyle(
                                    fontWeight: FontWeight.bold,fontSize: 12)),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          )),
    );
  }
}
