import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Demo App Flutter"),
      ),
      // body: Center(
      //   child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      //     const Text("You can Click button any items"),
      //     Text(
      //       number.toString(),
      //       style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      //     )
      //   ]),
      // ),
      body: Container(
        constraints: BoxConstraints(maxWidth: 200, maxHeight: 300),
        margin: EdgeInsets.only(left: 105, top: 50),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(10),
            // color: Color(0xFF96bbbb),
            gradient: LinearGradient(colors: [Color(0xFF96bbbb), Colors.blue ,Colors.red] ,begin: Alignment.topCenter,end: Alignment.bottomCenter),
            boxShadow: const [
              BoxShadow(color: Colors.purple, blurRadius: 6, spreadRadius: 4)
            ]),
        padding: const EdgeInsets.all(18),
        child: const Text("Flutter",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        transform: Matrix4.rotationZ(0.5),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            number++;
          });
          print(number);
        },
      ),
    );
  }
}
