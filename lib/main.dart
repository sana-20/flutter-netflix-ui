import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            fixedColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: [
              const BottomNavigationBarItem(
                  label: "홈", icon: Icon(Icons.home_rounded)),
              const BottomNavigationBarItem(
                  label: "NEW & HOT", icon: Icon(Icons.add_to_photos)),
              const BottomNavigationBarItem(
                  label: "검색", icon: Icon(Icons.search)),
              BottomNavigationBarItem(
                  label: "저장한 콘텐츠",
                  icon: Stack(
                    children: [
                      const Icon(Icons.file_download),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Stack(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ))
            ]),
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          actions: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(
                      "assets/logo.png",
                      height: 40,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.cast,
                        size: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Image.asset(
                          "assets/profile.png",
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 550,
                child: Stack(
                  children: [
                    Container(
                      height: 550,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Colors.black12,
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/c5.jpeg",
                              ),
                              fit: BoxFit.cover)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                      ),
                    ),
                    Container(
                      // height: 350.0,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          gradient: LinearGradient(
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                              colors: [
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.8),
                              ],
                              stops: const [
                                0.0,
                                1.0
                              ])),
                    ),
                    SafeArea(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("시리즈",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                            Text("영화",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15)),
                            Text("카테고리",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15))
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/coverlogo.png",
                                height: 50,
                              ),
                            ),
                            const Text(
                              "진심 어린  •  감정을 파고드는  • 드라마  •  로맨틱",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: const [
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 32,
                                    ),
                                    Text(
                                      "내가 찜한 콘텐츠",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ],
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  color: Colors.white,
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.play_arrow,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      Text("재생"),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: const [
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.white,
                                      size: 32,
                                    ),
                                    Text(
                                      "정보",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15, left: 15, top: 15),
                    child: Text(
                      "치즈 님이 시청 중인 콘텐츠",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _playList("assets/c1.jpeg", 0.4),
                        _playList("assets/c4.jpeg", 0.7),
                        _playList("assets/c3.jpg", 0.0),
                        _playList("assets/c2.jpeg", 0.2),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 15, left: 15, top: 20),
                    child: Text(
                      "지금 뜨는 콘텐츠",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _trendingList("assets/l1.jpg"),
                        _trendingList("assets/l2.jpg"),
                        _trendingList("assets/l3.jpeg"),
                        _trendingList("assets/l4.jpeg"),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

_playList(String img, double progress) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 125,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(img), fit: BoxFit.cover)),
          child: const Icon(
            Icons.play_circle_outline_rounded,
            color: Colors.white,
            size: 60,
          ),
        ),
      ),
      Container(
        width: 125,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(10),
        child: LinearProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: new AlwaysStoppedAnimation(Colors.red),
            value: progress),
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            Icons.info_outline,
            color: Colors.grey,
            size: 20,
          ),
          SizedBox(
            width: 80,
            height: 16,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.grey,
            size: 20,
          )
        ],
      )
    ],
  );
}

_trendingList(img) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 125,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage("$img"), fit: BoxFit.cover)),
    ),
  );
}
