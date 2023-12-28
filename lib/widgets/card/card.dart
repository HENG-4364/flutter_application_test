import 'package:flutter/material.dart';

class CardReusable extends StatelessWidget {
  const CardReusable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 350,
      child: Card(
        elevation: 4,
        child: Column(children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10)),
            child: SizedBox(
                width: double.infinity,
                height: 150,
                child: Image.network(
                  "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Fundraiser",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.deepPurple),
                ),
                Divider(
                  height: 10,
                  color: Colors.grey[300],
                ),
                const Text(
                  "Charity 5K Race for a Cure",
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Creator: Dimitris66 Credit: Getty ImagesWant to know where this information comes from?",
                  style: TextStyle(color: Colors.grey[600]),
                ),
           
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time_rounded),
                          SizedBox(
                            width: 5,
                          ),
                          Text("08:00 AM")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on,color: Colors.deepPurple,),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Phnom Penh, Cambodia")
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
