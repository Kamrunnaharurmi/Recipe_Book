import 'package:flutter/material.dart';
import 'package:recipe_app/home.dart';
import 'bangladeshi.dart';
import 'chinese.dart';
import 'french.dart';
import 'indian.dart';
import 'italian.dart';
import 'japanese.dart';
import 'mexican.dart';
import 'thai.dart';
import 'package:google_fonts/google_fonts.dart';

class Cuisine extends StatefulWidget {
  const Cuisine({super.key});

  @override
  State<Cuisine> createState() => CuisineState();
}

class CuisineState extends State<Cuisine> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/types.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Text('Types of Cuisines',
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home()));
                },
                icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 2, right: 2, top: 20),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: buildRectangleButton(
                            context,
                            'images/bangladeshi.jpg',
                            "Bangladeshi Cuisine",
                            Bangladeshi(),
                          ),
                        ),
                        Expanded(
                          child: buildRectangleButton(
                            context,
                            'images/indian.jpg',
                            "Indian Cuisine",
                            Indian(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: buildRectangleButton(
                            context,
                            'images/italian.jpg',
                            "Italian Cuisine",
                            Italian(),
                          ),
                        ),
                        Expanded(
                          child: buildRectangleButton(
                            context,
                            'images/chinese.jpg',
                            "Chinese Cuisine",
                            Chinese(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: buildRectangleButton(
                            context,
                            'images/french.jpg',
                            "French Cuisine",
                            French(),
                          ),
                        ),
                        Expanded(
                          child: buildRectangleButton(
                            context,
                            'images/japanese.jpg',
                            "Japanese Cuisine",
                            Japanese(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: buildRectangleButton(
                            context,
                            'images/mexican.jpg',
                            "Mexican Cuisine",
                            Mexican(),
                          ),
                        ),
                        Expanded(
                          child: buildRectangleButton(
                            context,
                            'images/thai.jpg',
                            "Thai Cuisine",
                            Thai(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRectangleButton(
      BuildContext context, String imagePath, String label, Widget page) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => page));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.zero,
            fixedSize: Size(150, 100),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                imagePath,
                width: 150,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          label,
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 17,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
