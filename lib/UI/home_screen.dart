import 'package:design_project/UI/Text_Styling/text_for_all.dart';
import 'package:flutter/material.dart';

// import 'Text_Styling/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 500,
          leading: Icon(Icons.arrow_back),
          backgroundColor: Color.fromARGB(255, 206, 211, 241),
          collapsedHeight: 500,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: AnimatedContainer(
              duration: Duration(
                milliseconds: 400,
              ),
              color: Colors.yellowAccent,
              height: 100,
              width: 80,
            ),
          ),
        ),
      ],
    ));
  }
}


// Column(
//         children: [
//           SafeArea(
//             minimum: EdgeInsets.only(top: 50),
//             child: Icon(Icons.arrow_back),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: ),
//             child: Text(
//               AllText.HomeText,
//               style: TextStyle(),
//             ),
//           ),
//         ],
//       ),