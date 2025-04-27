import 'dart:math';

import 'package:flutter/material.dart';
import 'package:foody/customs_widgets/brands_cards.dart';
import 'package:foody/customs_widgets/card_widget.dart';
import 'package:foody/customs_widgets/grid_card_widget.dart';

class FoodyRestaurant extends StatefulWidget {
  const FoodyRestaurant({super.key});

  @override
  State<FoodyRestaurant> createState() => _FoodyRestaurantState();
}

class _FoodyRestaurantState extends State<FoodyRestaurant> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.0,
        title: Image(
          image: AssetImage('assets/images/home/banner_logo.png'),
          height: 30,
        ),
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
                      color: Color(0xFFFC8A06),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image(
                              image: AssetImage(
                                "assets/images/home/profile_image.png",
                              ),
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
                                  color: Colors.black,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w800,
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
                      color: Color(0xFF028643),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("assets/images/home/bag.png"),
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
                Image(
                  image: AssetImage('assets/images/home/location.png'),
                  height: 25,
                ),
                SizedBox(width: 7),

                Text(
                  "Lution Street, N4G-00...",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
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

                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox(
                              width: size.width * 0.7,
                              child: Image(
                                image: AssetImage(
                                  'assets/images/restaurant/rest_woman.png',
                                ),
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 200,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -25,
                            left: -25,

                            child: Container(
                              height: 65,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                              ),
                              child: Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/restaurant/ratting.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      Align(
                        alignment: Alignment.centerLeft,

                        child: Container(
                          height: 50,
                          width: size.width * 0.7,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/restaurant/clock.png',
                                ),
                                height: 28,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Open until 3:00 AM",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25.0,
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    255,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        "Desi Flavours with a blend of Italian aesthetics!",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                          color: const Color.fromARGB(255, 14, 13, 13),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Tandoori Pizza London",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                          color: const Color.fromARGB(255, 14, 13, 13),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF03081F),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            padding: EdgeInsets.all(10),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/restaurant/list.png',
                                ),
                                height: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Minimum Order: 12 GBP',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF03081F),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            padding: EdgeInsets.all(10),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/restaurant/cycle.png',
                                ),
                                height: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Delivery in 20-25 Minutes',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Search from menu...',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  contentPadding: EdgeInsets.all(12.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Order from Tandoori Pizza London',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 18,
                height: 1.0,
                letterSpacing: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 19, 18, 18),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(
                              'assets/images/restaurant/dine_icon.png',
                            ),
                            height: 50,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Menu',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 32,
                              height: 1.0,
                              letterSpacing: 0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Pizzas',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 20),
                          Transform.rotate(
                            angle: pi / 2,
                            child: Image(
                              image: AssetImage(
                                'assets/images/home/search_arrow.png',
                              ),
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pizzas',

                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      height: 1.0,
                      letterSpacing: 0,
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white24,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                          color: const Color.fromARGB(255, 200, 196, 196),
                          width: 1.0,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'Sort by Pricing',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                        SizedBox(width: 10),
                        Transform.rotate(
                          angle: pi / 2,
                          child: Image(
                            image: AssetImage(
                              'assets/images/home/search_arrow.png',
                            ),
                            height: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
                      childAspectRatio: 0.8,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
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
              child: SizedBox(
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
                            image: AssetImage(
                              'assets/images/home/logo_juk.png',
                            ),
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
                      Image(
                        image: AssetImage("assets/images/home/friends.png"),
                      ),
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
                    'assets/images/home/banner1.png',
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

                  Positioned(
                    bottom: 10,
                    left: 25,
                    child: ElevatedButton(
                      onPressed: () {},
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
                  Image.asset(
                    'assets/images/home/banner2.png',
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

                  Positioned(
                    bottom: 10,
                    left: 25,
                    child: ElevatedButton(
                      onPressed: () {},
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
              onPressed: () {},
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
                textAlign: TextAlign.center,
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
                          Image(
                            image: AssetImage('assets/images/home/dish.png'),
                          ),
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
                          Image(
                            image: AssetImage('assets/images/home/food.png'),
                          ),
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
                          Image(
                            image: AssetImage('assets/images/home/order.png'),
                          ),
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
                  Image(
                    image: AssetImage('assets/images/home/logo_dark.png'),
                    height: 60,
                  ),
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
                  SizedBox(height: 20),
                  SizedBox(
                    width: size.width * 0.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Legal Pages",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF03081F),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Terms & Conditions",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.underline,
                            color: const Color(0xFF03081F),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.underline,
                            color: const Color(0xFF03081F),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Cookies",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.underline,
                            color: const Color(0xFF03081F),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Modern slavery statement",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.underline,
                            color: const Color(0xFF03081F),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  SizedBox(
                    width: size.width * 0.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Important Links",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF03081F),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Get help",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.underline,
                            color: const Color(0xFF03081F),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Add your restaurant",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.underline,
                            color: const Color(0xFF03081F),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Signup to delivery",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.underline,
                            color: const Color(0xFF03081F),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Create a business account",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.underline,
                            color: const Color(0xFF03081F),
                          ),
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(color: const Color(0xFF03081F)),
                    child: Center(
                      child: Text(
                        "Order.uk Copyright 2024, All Rights Reserved.",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Poppins",
                          color: Colors.white,
                        ),
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
