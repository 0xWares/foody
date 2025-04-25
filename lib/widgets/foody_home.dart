import 'package:flutter/material.dart';
import 'package:foody/customs_widgets/card_widget.dart';
import 'package:foody/customs_widgets/grid_card_widget.dart';

class FoodyHome extends StatefulWidget {
  @override
  State<FoodyHome> createState() => _FoodyHomeState();
}

class _FoodyHomeState extends State<FoodyHome> {
  void handleDropdownChange(String? newValue) {
    print('Selected: $newValue');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.0, // Sets height to 60px (dp)
        title: Image(image: AssetImage('images/banner_logo.png'), height: 30),
        actions: [
          IconButton(icon: const Icon(Icons.menu, size: 45), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 70,
                      color: const Color.fromARGB(179, 228, 224, 224),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              50,
                            ), // Adjust radius for roundness
                            child: Image(
                              image: AssetImage("images/profile_image.png"),
                              width: 44,
                              height: 44,
                              fit: BoxFit.cover, //
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Aycan',
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                'My Account',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 54, 54, 51),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w800,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 70,
                      color: Colors.amberAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("images/bag.png"),
                            height: 33,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'GBP 79.87',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 255, 254, 254),
                              fontFamily: "Poppins",
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(image: AssetImage('images/location.png'), height: 25),
                SizedBox(width: 7),

                Text(
                  "Lution Street, N4G-00...",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400, // 400 = Regular
                    fontSize: 20.0,

                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
                top: 15,
                bottom: 10,
              ),
              child: Container(
                width: double.infinity,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFE2E2E2),
                      spreadRadius: 1,

                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Order Restaurant food, takeaway and groceries.",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400, // 400 = Regular
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                            height: 1.0,
                            letterSpacing: 0.0,
                          ),
                          children: [
                            TextSpan(
                              text: "Feast Your Senses,\n",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "Fast and Fresh",
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),

                      Text(
                        "Enter a post code to see what we deliver",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400, // 400 = Regular
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Enter your postcode',
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0,
                              color: Colors.black.withOpacity(0.6),
                            ),
                            contentPadding: EdgeInsets.fromLTRB(20, 18, 70, 18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(
                                right: 0,
                              ), // Positions icon inside field
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      'images/search_arrow.png',
                                      height: 20,
                                      width: 20,
                                      filterQuality: FilterQuality.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Up to -40% Discount Offers 🎊 ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                        left: 10,
                        right: 10,
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Transform.rotate(
                          angle: 1.5,
                          child: Image(
                            image: AssetImage('images/search_arrow.png'),
                            height: 18,
                          ),
                        ),
                        SizedBox(width: 7),
                        Text("Pizza & Fast Food"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CardWidget();
                },
                itemCount: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                bottom: 10,
                left: 0.0,
                right: 0.0,
              ),
              child: Container(
                width: double.infinity,

                decoration: BoxDecoration(
                  color: const Color.fromARGB(179, 228, 226, 226),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Order.Uk’s Popular Categories",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      childAspectRatio: 0.8, // Adjust this ratio as needed
                      mainAxisSpacing: 10, // Space between rows
                      crossAxisSpacing: 10, // Space between columns
                      children: List.generate(6, (index) {
                        return GridCardWidget();
                      }),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
