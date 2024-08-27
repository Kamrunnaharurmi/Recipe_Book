import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'cuisine.dart';
import 'package:google_fonts/google_fonts.dart';

class Chinese extends StatefulWidget {
  const Chinese({super.key});

  @override
  State<Chinese> createState() => ChineseState();
}

class ChineseState extends State<Chinese> {
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
              'Chinese Cuisine',
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
                  MaterialPageRoute(builder: (context) => Cuisine()),
                );
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
                    "1. Kung Pao Chicken:",
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
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'images/kungpao.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=B2e9H4GQ32s"),
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
                        "- 500g chicken\n- 1 cup peanuts\n- 2 tbsp soy sauce\n- 2 tbsp rice vinegar\n- 1 tbsp sugar\n- 2 cloves garlic\n- 1 tbsp ginger",
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
                        "Cook chicken with garlic and ginger. Add peanuts, soy sauce, vinegar, and sugar. Cook until sauce thickens.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "2. Sweet and Sour Pork:",
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
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'images/pork.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=6xgapMla7LQ"),
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
                        "- 500g pork\n- 1 cup bell peppers\n- 1 cup pineapple\n- 1/2 cup vinegar\n- 1/2 cup sugar\n- 1/4 cup soy sauce",
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
                        "Fry pork until crispy. Mix vinegar, sugar, and soy sauce, then add bell peppers and pineapple. Combine with pork.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "3. Fried Rice:",
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
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'images/friedrice.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=LPv_C1CaZjA"),
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
                        "- 2 cups cooked rice\n- 1 cup mixed vegetables\n- 2 eggs\n- 2 tbsp soy sauce\n- 2 cloves garlic",
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
                        "Stir-fry garlic and vegetables. Add rice, soy sauce, and eggs. Cook until eggs are done.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "4. Spring Rolls:",
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
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'images/springrolls.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=wIQmCCK_Qg0"),
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
                        "- 10 spring roll wrappers\n- 1 cup shredded cabbage\n- 1 cup cooked chicken\n- 1 carrot\n- 2 tbsp soy sauce\n- oil for frying",
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
                        "Mix cabbage, chicken, and carrot. Roll in wrappers and fry until golden.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "5. Dumplings:",
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
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'images/dumpling.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=J6xFRlG5Qxg"),
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
                        "- Dumplings sheets\n- Pork\n- Cabbage\n- Onion\n- Garlic",
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
                        "Mix pork, cabbage, and garlic. Fill wrappers with mixture, fold and seal. Steam or pan-fry until cooked.",
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
