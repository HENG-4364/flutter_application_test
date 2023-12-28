import 'package:flutter/material.dart';

class listView extends StatelessWidget {
  const listView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 100,
            width: 200,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 200,
            color: Colors.orange,
          ),
          Container(
            height: 100,
            width: 200,
            color: Colors.black,
          ),
          Container(
            height: 100,
            width: 200,
            color: Colors.green,
          ),
        ],
        
      ),
    );
  }
}
