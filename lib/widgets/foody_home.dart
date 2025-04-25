import 'package:flutter/material.dart';
import 'package:foody/customs_widgets/brands_cards.dart';
import 'package:foody/customs_widgets/card_widget.dart';
import 'package:foody/customs_widgets/grid_card_widget.dart';

class FoodyHome extends StatefulWidget {
  const FoodyHome({super.key});

  @override
  State<FoodyHome> createState() => _FoodyHomeState();
}

class _FoodyHomeState extends State<FoodyHome> {
  void handleDropdownChange(String? newValue) {
    print('Selected: $newValue');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
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
                                  width: 58,
                                  height: 58,
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
                    SizedBox(height: 15),
                  ],
                ),
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

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Order.Uk’s Popular Brands",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),

                    SizedBox(height: 10),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return BrandsCards();
                        },
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(179, 228, 226, 226),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('images/logo_juk.png'),
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: RichText(
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
                                    text: "ing  is more\n",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "personalised",
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "& instant",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        14,
                                        13,
                                        13,
                                      ),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 18),

                      const Text(
                        "Download the Order.uk app for faster ordering",
                        style: TextStyle(fontSize: 15),
                      ),

                      SizedBox(height: 25),
                      Image(image: AssetImage("images/friends.png")),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Stack(
                children: [
                  // Background Image
                  Image.asset(
                    'images/banner1.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),

                  Positioned(
                    top: 0,
                    left: 25,

                    child: Container(
                      height: 20,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                        ),
                      ),
                      child: Center(
                        child: const Text(
                          "Earn more with lower fees",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 84,
                    left: 25,
                    child: Text(
                      'Signup as a business',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                  Positioned(
                    left: 29,
                    bottom: 60,
                    child: const Text(
                      'Partner with us',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                  // Positioned Button
                  Positioned(
                    bottom: 10,
                    left: 25,
                    child: ElevatedButton(
                      onPressed: () {
                        // Button action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Get Started'),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Stack(
                children: [
                  // Background Image
                  Image.asset(
                    'images/banner2.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),

                  Positioned(
                    top: 0,
                    left: 25,

                    child: Container(
                      height: 20,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                        ),
                      ),
                      child: Center(
                        child: const Text(
                          "Avail exclusive perks",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 84,
                    left: 25,
                    child: Text(
                      'Signup as a rider',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                  Positioned(
                    left: 29,
                    bottom: 60,
                    child: const Text(
                      'Ride with us',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                  // Positioned Button
                  Positioned(
                    bottom: 10,
                    left: 25,
                    child: ElevatedButton(
                      onPressed: () {
                        // Button action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Get Started'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Know more about us!",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Button action
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                  left: 30,
                  right: 30,
                ),
                backgroundColor: Colors.amber,
                foregroundColor: const Color.fromARGB(255, 14, 13, 13),
              ),
              child: const Text(
                'How does Order.UK work?  ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: const Text(
                'What payment methods are accepted?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 15),
            const Center(
              child: Text(
                'Can I track my order in real-time?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),

            SizedBox(height: 15),
            Center(
              child: const Text(
                'Are there any special discounts or promotions available?',
                textAlign: TextAlign.center, // Added textAlign property
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: const Text(
                'Is Order.UK available in my area?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(179, 109, 106, 106),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Container(
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(200, 224, 221, 221),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "Place an Order!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 15),
                          Image(image: AssetImage('images/dish.png')),
                          Text(
                            'Place order through ourwebsite or Mobile app',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(200, 224, 221, 221),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "Track Progress",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 15),
                          Image(image: AssetImage('images/food.png')),
                          Text(
                            'Your can track your orderstatus with delivery time',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: size.width * 0.5,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(200, 224, 221, 221),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "Get your Order!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 15),
                          Image(image: AssetImage('images/order.png')),
                          Text(
                            'Receive your order at alighting fast speed!',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: size.width * 0.8,
                      child: Text(
                        "Order.UK simplifies the food ordering process. Browse through our diverse menu, select your favorite dishes, and proceed to checkout. Your delicious meal will be on its way to your doorstep in no time!",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(Colors.amber.value),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "546+",
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Registered Riders",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.white,
                      thickness: 2,
                      indent: 60,
                      endIndent: 60,
                    ),
                    Text(
                      "789,900+",
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Orders Delivered",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.white,
                      thickness: 2,
                      indent: 60,
                      endIndent: 60,
                    ),
                    Text(
                      "690+",
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Restaurants Partnered",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.white,
                      thickness: 2,
                      indent: 60,
                      endIndent: 60,
                    ),
                    Text(
                      "17,457+",
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Food items",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(179, 228, 226, 226),
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Image(image: AssetImage('images/logo_dark.png'), height: 60),
                  SizedBox(height: 20),
                  Text(
                    "Company # 490039-445, Registered withHouse of companies.",
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Get Exclusive Deals in your Inbox",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),

                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'youremail@gmail.com',
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
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                width: 100,
                                height: 58,
                                decoration: BoxDecoration(color: Colors.amber),
                                child: Center(
                                  child: const Text(
                                    "Subscribe",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
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
          ],
        ),
      ),
    );
  }
}
