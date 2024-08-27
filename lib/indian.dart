import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'cuisine.dart';
import 'package:google_fonts/google_fonts.dart';

class Indian extends StatefulWidget {
  const Indian({super.key});

  @override
  State<Indian> createState() => IndianState();
}

class IndianState extends State<Indian> {
  launchUrl(String url) async {
    try {
      await launch(url);
    } catch (e) {
      throw "Error launching URL: $e";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/recipe.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              'Indian Cuisine',
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Cuisine()));
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "1. Chicken Curry:",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'images/chickencurry.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=x3Mzind-TBo"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: CircleBorder(),
                            ),
                            child: Image.asset(
                              'images/play.png',
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "**Ingredients:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "- 500g chicken\n- 2 onions (chopped)\n- 2 tomatoes (chopped)\n- 1 cup yogurt\n- 2 tbsp curry powder\n- salt to taste\n- 2 tbsp oil",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "**Instructions:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Heat oil, fry onions until golden. Add tomatoes and cook until soft. Add curry powder and chicken, cook until chicken is done. Add yogurt and cook for 10 minutes.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "2. Palak Paneer:",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'images/palakpaneer.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=cRsAQeR5dbI"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: const CircleBorder(),
                            ),
                            child: Image.asset(
                              'images/play.png',
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "**Ingredients:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "- 200g paneer\n- 2 cups spinach\n- 1 onion\n- 2 tomatoes\n- 1 tsp cumin seeds\n- 1 tsp garam masala\n- 2 tbsp oil\n- salt to taste",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "**Instructions:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Blanch spinach and blend into a paste. Heat oil, add cumin seeds, onions, and tomatoes. Cook until soft. Add spinach paste and garam masala. Add paneer and cook for 10 minutes.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "3. Butter Chicken:",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'images/butterchicken.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=M-j7G7Ebb2A"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: const CircleBorder(),
                            ),
                            child: Image.asset(
                              'images/play.png',
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "**Ingredients:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "- 500g chicken\n- 1 cup tomato puree\n- 1 cup cream\n- 2 tbsp butter\n- 2 tbsp ginger-garlic paste\n- 1 tbsp garam masala\n- salt to taste",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "**Instructions:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Marinate chicken with ginger-garlic paste and salt. Cook in butter until done. Add tomato puree and cook for 10 minutes. Add cream and garam masala, cook for 5 more minutes.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "4. Chole Bhature:",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'images/bhature.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=31fXtcCDFZU"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: const CircleBorder(),
                            ),
                            child: Image.asset(
                              'images/play.png',
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "**Ingredients:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "- 1 cup chickpeas\n- 2 onions\n- 2 tomatoes\n- 1 tsp cumin seeds\n- 1 tsp coriander powder\n- 1/2 tsp turmeric\n- 2 cups flour\n- 1/2 cup yogurt",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "**Instructions:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Soak chickpeas overnight. Boil until soft. Heat oil, add cumin seeds, onions, and tomatoes. Add spices and chickpeas. Cook for 10 minutes. For Bhature, mix flour, yogurt, and water, knead into dough, and fry in hot oil.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "5. Aloo gobi:",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'images/aloogobi.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=JihdOvkxQC8"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: const CircleBorder(),
                            ),
                            child: Image.asset(
                              'images/play.png',
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "**Ingredients:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "- 1 cauliflower\n- 2 potatoes\n- 1 onion\n- 1 tomato\n- 1 tsp cumin seeds\n- 1 tsp turmeric\n- 1 tsp garam masala\n- 2 tbsp oil",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "**Instructions:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Heat oil, add cumin seeds, onions, and tomatoes. Cook until soft. Add potatoes and cauliflower. Add turmeric and garam masala, cook until vegetables are tender.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
