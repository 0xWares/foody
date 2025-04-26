import 'package:flutter/material.dart';

class GridCardWidget extends StatelessWidget {
  const GridCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 0, top: 0, bottom: 0),
      child: SizedBox(
        // Added fixed height constraint
        height: size.height * 0.28, // Adjust this value as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Important for grid layout
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: size.width * 0.46,
                    height: size.height * 0.2, // Reduced from original
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [
                            const Color.fromARGB(0, 36, 35, 35),
                            Colors.black,
                          ],
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
                  Container(
                    width: size.width * 0.46,
                    decoration: BoxDecoration(
                      color: Color(0xFF03081F),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    constraints: BoxConstraints(
                      minHeight: 60, // Minimum height for text content
                      maxHeight: 80, // Maximum height for text content
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            // Makes text flexible within container
                            child: Text(
                              "Burgers & Fast food",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.amber,
                              ),
                            ),
                          ),
                          SizedBox(height: 3),
                          Flexible(
                            child: Text(
                              "21 Restaurants",
                              maxLines: 1,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
