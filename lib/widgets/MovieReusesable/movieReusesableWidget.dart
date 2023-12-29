import 'package:flutter/material.dart';

class MovieReusableWidget extends StatelessWidget {
  const MovieReusableWidget({
    super.key,
    required this.listMovie,
  });

  final List listMovie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listMovie.length,
        itemBuilder: (context,index){
          return Container(
            padding: EdgeInsets.only(right: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(listMovie[index],fit:BoxFit.cover,height: 200,width: 150,))
            );
        },
      ),
    );
  }
}
