import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff1E1E1E),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return GameCard();
            }),
      ),
    );
  }
}

class GameCard extends StatelessWidget {
  const GameCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 25, right: 25, top: 15),
      decoration: BoxDecoration(
        color: const Color(0xff233144),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 15, top: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'COD - Infinite Warfare',
                    style: TextStyle(color: Colors.white, fontFamily: 'yekan'),
                  ),
                  Text('Activision',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'yekan')),
                  Text('3.9',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'yekan')),
                  Text(
                      'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'yekan')),
                ],
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 10, right: 15, top: 15, bottom: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                imageUrl:
                    'https://imgc.allpostersimages.com/img/posters/halo-3-awakening-premium-poster_u-L-F9TM7B0.jpg',
                placeholder: (context, url) {
                  return Container(
                    height: 120,
                    width: 88,
                    decoration: BoxDecoration(
                        color: const Color(0xff1C82AD),
                        borderRadius: BorderRadius.circular(12)),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
