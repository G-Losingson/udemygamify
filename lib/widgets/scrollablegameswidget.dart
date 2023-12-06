import 'package:flutter/material.dart';
import 'package:udemygamify/data.dart';

class ScrollableGamesWidget extends StatelessWidget {
  final double height;
  final double width;
  final bool showtitle;
  final List<Game> gamesData;

  const ScrollableGamesWidget({
    super.key,
    required this.height,
    required this.width,
    required this.showtitle,
    required this.gamesData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: gamesData.map((game) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: width * 0.28,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * 0.80,
                  width: width * 0.28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: NetworkImage(game.coverImage.url),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  game.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: height * 0.06,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}