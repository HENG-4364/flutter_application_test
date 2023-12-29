import 'package:flutter/material.dart';
import 'package:flutter_application_test/profile.dart';
import 'package:flutter_application_test/widgets/ListView/listview.dart';
import 'package:flutter_application_test/widgets/MovieReusesable/movieReusesableWidget.dart';
import 'package:flutter_application_test/widgets/RowTitle/roeTitle.dart';
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
  final List recommendedMovie = [
    "https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/Oppenheimer_%28film%29.jpg/220px-Oppenheimer_%28film%29.jpg",
    "https://www.boredpanda.com/blog/wp-content/uploads/2022/05/adventure_movies_10-6273871bdbc6a__700.jpg",
    "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p25765_p_v12_aj.jpg",
    "https://lumiere-a.akamaihd.net/v1/images/p_disneymovies_avatarthewayofwater_streamingupdate_2096_0908fa1b.jpeg",
    "https://lumiere-a.akamaihd.net/v1/images/p_junglecruise_21740_v2_bb7f0ae4.jpeg",
    "https://www.gscmovies.com.my/wp-content/uploads/2022/09/LDTM-GSCMPoster-1-ePost-768x1280.jpg"
  ];
  final List popularMovie = [
    "https://lumiere-a.akamaihd.net/v1/images/p_disneymovies_avatarthewayofwater_streamingupdate_2096_0908fa1b.jpeg",
    "https://lumiere-a.akamaihd.net/v1/images/p_junglecruise_21740_v2_bb7f0ae4.jpeg",
    "https://www.gscmovies.com.my/wp-content/uploads/2022/09/LDTM-GSCMPoster-1-ePost-768x1280.jpg",
    "https://www.gscmovies.com.my/wp-content/uploads/2022/09/LDTM-GSCMPoster-1-ePost-768x1280.jpg",
    "https://lumiere-a.akamaihd.net/v1/images/p_thelittlemermaid_2023_dplus_796_6213577c.jpeg?region=0%2C0%2C540%2C810",
    "https://m.media-amazon.com/images/M/MV5BM2YwMzJjZDgtNmUzOC00NjEyLThjOGMtOTI4YWYxZWQxY2Q1XkEyXkFqcGdeQXVyNTkzMzg3NDM@._V1_.jpg",
    "https://juksun.com/wp-content/uploads/2023/08/Wish-You-Were-The-One-Movie-Poster.jpg"
  ];
  final List ComingMovie = [
    "https://www.gscmovies.com.my/wp-content/uploads/2022/09/LDTM-GSCMPoster-1-ePost-768x1280.jpg",
    "https://lumiere-a.akamaihd.net/v1/images/p_thelittlemermaid_2023_dplus_796_6213577c.jpeg?region=0%2C0%2C540%2C810",
    "https://m.media-amazon.com/images/M/MV5BM2YwMzJjZDgtNmUzOC00NjEyLThjOGMtOTI4YWYxZWQxY2Q1XkEyXkFqcGdeQXVyNTkzMzg3NDM@._V1_.jpg",
    "https://juksun.com/wp-content/uploads/2023/08/Wish-You-Were-The-One-Movie-Poster.jpg"
        "https://lumiere-a.akamaihd.net/v1/images/p_disneymovies_avatarthewayofwater_streamingupdate_2096_0908fa1b.jpeg",
    "https://lumiere-a.akamaihd.net/v1/images/p_junglecruise_21740_v2_bb7f0ae4.jpeg",
    "https://www.gscmovies.com.my/wp-content/uploads/2022/09/LDTM-GSCMPoster-1-ePost-768x1280.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center(
          child: Text(
            "The Movie App",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png",
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: ListView(
          children: [
            Column(children: [
              RowTitle(
                title: 'Recommended for you',
                subtitle: 'See all',
              ),
              SizedBox(
                height: 12,
              ),
              MovieReusableWidget(listMovie: recommendedMovie),
              SizedBox(
                height: 12,
              ),
              RowTitle(
                title: 'Popular Movie',
                subtitle: 'See all',
              ),
              SizedBox(
                height: 12,
              ),
              MovieReusableWidget(listMovie: popularMovie),
              SizedBox(
                height: 12,
              ),
              RowTitle(
                title: 'Coming Soon',
                subtitle: 'See all',
              ),
              SizedBox(
                height: 12,
              ),
              MovieReusableWidget(listMovie: ComingMovie),
            ])
          ],
        ),
      ),
    );
  }
}
