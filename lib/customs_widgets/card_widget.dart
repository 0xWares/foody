import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 0, top: 0, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: size.width * 0.4,
              height: size.height * 0.2,
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: [const Color.fromARGB(0, 36, 35, 35), Colors.black],
                    stops: [0.3, 1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.darken,
                child: Image(
                  image: AssetImage('assets/images/home/card_item.png'),
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.only(
              left: 6.0,
              right: 6.0,
              top: 0,
              bottom: 0,
            ),
            child: SizedBox(
              width: size.width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Restaurant",
                    style: TextStyle(fontSize: 18, color: Colors.amber),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Butterbrot Caf’eLondon",
                    maxLines: 2,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 20,
                      color: const Color.fromARGB(255, 17, 17, 17),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
