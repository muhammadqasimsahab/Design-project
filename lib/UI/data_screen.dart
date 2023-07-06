import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TabBar1 extends StatefulWidget {
  const TabBar1({super.key});

  @override
  State<TabBar1> createState() => _TabBar1State();
}

class _TabBar1State extends State<TabBar1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 245, 236, 236),
          bottom: TabBar(tabs: [
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 88, 199, 243),
                  borderRadius: BorderRadius.circular(15)),
              child: Tab(
                text: 'All',
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 56, 25),
                  borderRadius: BorderRadius.circular(15)),
              child: Tab(
                text: 'Top Treding',
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    colors: [
                      Colors.purple,
                      Color.fromARGB(255, 178, 65, 231),
                      Color.fromARGB(255, 243, 121, 229),
                      Color.fromARGB(255, 243, 121, 229)
                      //add more colors for gradient
                    ],
                    begin: Alignment.topLeft, //begin of the gradient color
                    end: Alignment.bottomRight, //end of the gradient color
                    stops: [0, 0.2, 0.5, 0.8] //stops for individual color
                    //set the stops number equal to numbers of color
                    ),
              ),
              child: Tab(
                text: 'For You',
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          ShowImagesall(context),
          Toptrading(context),
          Text('tabe 3'),
        ]),
      ),
    );
  }
}

Widget ShowImagesall(BuildContext context) {
  bool fill = false;
  return MasonryGridView.builder(
      itemCount: 10,
      crossAxisSpacing: 3,
      mainAxisSpacing: 3,
      gridDelegate:
          SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.network(
                        'https://source.unsplash.com/random?sig=$index'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          if (fill = true) {
                            Icon(Icons.favorite_border);
                          } else {
                            Icon(Icons.favorite_border_outlined);
                          }
                        },
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                          shadows: <Shadow>[
                            Shadow(color: Colors.black, blurRadius: 10)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Text('Poster Design')
              ],
            ),
          ),
        );
      });
}

Widget Toptrading(BuildContext context) {
  return MasonryGridView.builder(
      itemCount: 10,
      crossAxisSpacing: 3,
      mainAxisSpacing: 3,
      gridDelegate:
          SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Image.network('https://source.unsplash.com/random?sig=$index'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                    shadows: <Shadow>[
                      Shadow(color: Colors.black, blurRadius: 10)
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      });
}
