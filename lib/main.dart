import 'package:flutter/material.dart';

import 'src/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YourWidget(),
    );
  }
}

class YourWidget extends StatelessWidget {
  const YourWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.redAccent,
        toolbarHeight: 60,
        centerTitle: false,
        title: Image.asset(
          'assets/images/insta_logo.png',
          scale: 2.6,
        ),
        actions: const [
          Icon(
            Icons.favorite_border_rounded,
            size: 25,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.send_outlined,
            size: 25
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: const HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32,
        backgroundColor: Colors.pinkAccent,
        currentIndex: 2,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search_rounded,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_rounded,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_file_rounded,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_rounded,
                color: Colors.black,
              ),
              label: ""),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   label: const Icon(Icons.add_a_photo),
      // ),
    );
  }
}
