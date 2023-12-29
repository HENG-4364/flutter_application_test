import 'package:flutter/material.dart';
import 'package:flutter_application_test/popular_movie_screen.dart';

class RowTitle extends StatelessWidget {
   RowTitle({
    super.key, required this.title, required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        InkWell(
            onTap: () {
              print("See all");
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PopularMovieScreen()));
            },
            child:  Text(
              subtitle,
              style: const TextStyle(color: Colors.deepPurple),
            ))
      ],
    );
  }
}
