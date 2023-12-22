import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
          child: Text(
            "Watch all",
            style: TextStyle(
              fontSize: 13,
            ),
            textAlign: TextAlign.end,
          ),
        ),
        SizedBox(
          height: 90,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            shrinkWrap: true,
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1694153309333-dc7576cf7fce?q=80&w=2720&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50)),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 200,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            // scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 450,
                        // width: 100,
                        // decoration: const BoxDecoration(color: Colors.pink),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 14,
                            ),
                            Icon(
                              Icons.favorite_border_outlined,
                              size: 35,
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Icon(
                              Icons.send_outlined,
                              size: 35,
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Icon(
                              Icons.bookmark_outline_rounded,
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Stack(
                        children: [
                          Container(
                            // width: 330,
                            height: 450,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1703088066010-af61bb552da4?q=80&w=3122&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                ),
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          Positioned(
                            top: 380,
                            left: 10,
                            child: Container(
                              height: 60,
                              width: 315,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,7,0,7),
                                    child: Container(
                                      width: 45,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          fit: BoxFit.cover,
                                            image: NetworkImage(
                                          'https://images.unsplash.com/photo-1568322503882-d119ddcb1c93?q=80&w=2695&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                        )),
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      height: 55,
                                      decoration: BoxDecoration(
                                        // color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Text("data"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
