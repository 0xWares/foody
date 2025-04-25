import 'package:flutter/material.dart';

class BrandsCards extends StatelessWidget {
  const BrandsCards({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 0, top: 0, bottom: 0),
      child: SizedBox(
        height: size.height * 0.28,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: size.width * 0.39,
                    height: size.height * 0.17,
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
                        image: AssetImage('images/brand_image.png'),
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.39,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFC8A06),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    constraints: BoxConstraints(minHeight: 60, maxHeight: 80),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 6.0,
                        left: 3,
                        right: 3,
                        bottom: 0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 3),

                          Text(
                            "McDonald’s London ",
                            maxLines: 1,
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 20,
                              color: Colors.white,
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
