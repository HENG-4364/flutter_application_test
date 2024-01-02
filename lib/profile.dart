import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  String profileImage =
      "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/04/05/Lisa-BLACKPINK-4269211768.jpg";
  String cover = "https://4kwallpapers.com/images/walls/thumbs_3t/3105.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 280,
                        child: Stack(
                          children: [
                            Image.network(
                              cover,
                              height: 240,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 30,
                                    left: 10,
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                            Icons.arrow_back_rounded,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(profileImage),
                                    radius: 50,
                                  ),
                                ),
                                const Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.camera_alt_rounded,
                                        color: Colors.black,
                                      ),
                                    )),
                              ]),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lisa",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            Text("I'm a Rapper")
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class Friend {
  final String name;
  final String profileUrl;

  Friend({required this.name, required this.profileUrl});
}

List<Friend> listFriends = [
  Friend(name: "Lida", profileUrl: "profileUrl"),
  Friend(name: "Lida", profileUrl: "profileUrl"),
];
