import 'package:flutter/material.dart';
import 'package:flutter_application_test/widgets/ListView/listview.dart';
import 'package:flutter_application_test/widgets/card/card.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;
  final controller =ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        title: const Text(
          "Explore",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: (const Icon(
                Icons.add,
                color: Colors.black,
              )))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          controller: controller,
          children: [
          Column(children: [
            CardReusable(),
            CardReusable(),
            CardReusable(),
            listView(),   
          ]),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh,color: Colors.blue, ),
        onPressed:(){
          controller.animateTo(controller.position.minScrollExtent, duration: Duration(seconds: 1), curve: Curves.ease);
        }),
    );
  }
}
