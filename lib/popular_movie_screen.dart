import 'package:flutter/material.dart';

class PopularMovieScreen extends StatelessWidget {
  PopularMovieScreen({super.key});
 final List listMovie = [
    "https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/Oppenheimer_%28film%29.jpg/220px-Oppenheimer_%28film%29.jpg",
    "https://www.boredpanda.com/blog/wp-content/uploads/2022/05/adventure_movies_10-6273871bdbc6a__700.jpg",
    "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p25765_p_v12_aj.jpg",
    "https://lumiere-a.akamaihd.net/v1/images/p_disneymovies_avatarthewayofwater_streamingupdate_2096_0908fa1b.jpeg",
    "https://lumiere-a.akamaihd.net/v1/images/p_junglecruise_21740_v2_bb7f0ae4.jpeg",
    "https://www.gscmovies.com.my/wp-content/uploads/2022/09/LDTM-GSCMPoster-1-ePost-768x1280.jpg",
    "https://lumiere-a.akamaihd.net/v1/images/p_thelittlemermaid_2023_dplus_796_6213577c.jpeg?region=0%2C0%2C540%2C810",
    "https://m.media-amazon.com/images/M/MV5BM2YwMzJjZDgtNmUzOC00NjEyLThjOGMtOTI4YWYxZWQxY2Q1XkEyXkFqcGdeQXVyNTkzMzg3NDM@._V1_.jpg",
    "https://juksun.com/wp-content/uploads/2023/08/Wish-You-Were-The-One-Movie-Poster.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center(
          child: Text(
            "Popular Movie",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.blueGrey,             
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          Expanded(        
            child: GridView.builder(
              itemCount: listMovie.length,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10,childAspectRatio: 0.8),
                itemBuilder: ((context, index){
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SizedBox(
                      height: 500,
                      child: Image.network(listMovie[index],fit: BoxFit.cover,))
                      );
                })
                ),
          )
        ]),
      ),
    );
  }
}
