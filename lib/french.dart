import 'package:flutter/material.dart';
import 'package:recipe_app/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cuisine.dart';

class French extends StatefulWidget {
  const French({super.key});

  @override
  State<French> createState() => FrenchState();
}

class FrenchState extends State<French> {
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
              'French Cuisine',
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
                crossAxisAlignment: CrossAxisAlignment.start, // Aligns content to the left
                children: [
                  SizedBox(height: 10),
                  Text(
                    "1. Coq au Vin:",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Aligns content to the left
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'images/coq.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                  launchUrl("https://www.youtube.com/watch?v=hJswLfXL_GA"),
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
                      SizedBox(height: 10), // Added space between elements
                      Text(
                        "**Ingredients:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "- 500g chicken\n- 1 bottle red wine\n- 100g mushrooms\n- 1 onion\n- 2 cloves garlic\n- 2 tbsp flour\n- 2 tbsp olive oil\n- salt and pepper",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10), // Added space between elements
                      Text(
                        "**Instructions:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Brown chicken in olive oil. Remove chicken, cook onions and garlic, then mushrooms. Return chicken, add wine and flour, cook for 1 hour.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "2. Ratatouille:",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Aligns content to the left
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'images/ratatouille.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                  launchUrl("https://www.youtube.com/watch?v=RQlp-p_Qcsw"),
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
                      SizedBox(height: 10), // Added space between elements
                      Text(
                        "**Ingredients:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "- 1 eggplant\n- 1 zucchini\n- 1 bell pepper\n- 1 onion\n- 2 tomatoes\n- 2 cloves garlic\n- olive oil",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10), // Added space between elements
                      Text(
                        "**Instructions:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Chop vegetables and sauté in olive oil. Cook until tender and mix together. Season to taste.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "3. Bouillabaisse:",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Aligns content to the left
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'images/bouillabaisse.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                  launchUrl("https://www.youtube.com/watch?v=Uqki2fuIlag"),
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
                      SizedBox(height: 10), // Added space between elements
                      Text(
                        "**Ingredients:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "- 500g mixed fish\n- 1 onion\n- 2 tomatoes\n- 1 leek\n- 1 clove garlic\n- 1 tsp saffron\n- 1 liter fish stock",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10), // Added space between elements
                      Text(
                        "**Instructions:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Sauté onion, garlic, and leek. Add tomatoes and fish stock, simmer. Add fish and saffron, cook until fish is done.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "4. Quiche Lorraine:",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Aligns content to the left
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'images/lorrain.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                  launchUrl("https://www.youtube.com/watch?v=naZgw-QJHMs"),
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
                      SizedBox(height: 10), // Added space between elements
                      Text(
                        "**Ingredients:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "- 1 pie crust\n- 200g bacon\n- 1 cup cream\n- 3 eggs\n- 1 cup cheese\n- 1 onion",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10), // Added space between elements
                      Text(
                        "**Instructions:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Preheat oven to 375°F. Cook bacon and onion. Mix eggs, cream, and cheese. Add bacon and onion to pie crust, pour egg mixture over, bake for 40 minutes.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "5. Crêpes:",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Aligns content to the left
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'images/crepes.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                  launchUrl("https://www.youtube.com/watch?v=5xICMff1pCw"),
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
                      SizedBox(height: 10), // Added space between elements
                      Text(
                        "**Ingredients:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "- 1 cup flour\n- 2 eggs\n- 1 cup milk\n- 2 tbsp butter\n- 1/4 tsp salt",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10), // Added space between elements
                      Text(
                        "**Instructions:**",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Mix all ingredients until smooth. Heat a pan with butter, pour batter, and cook until golden on both sides.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
