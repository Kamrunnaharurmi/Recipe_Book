import 'package:flutter/material.dart';
import 'package:recipe_app/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class Dessert extends StatefulWidget {
  const Dessert({super.key});

  @override
  State<Dessert> createState() => DessertState();
}

class DessertState extends State<Dessert> {
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
        decoration: const BoxDecoration(
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
            title:Text(
              'Desserts',
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
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(height: 10),
                   Text(
                    "1. Brownies:",
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
                              'images/brownies.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=Z1OLG7F3HD4"),
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
                        "- 1/2 cup of butter\n- 1 cup of sugar\n- 2 eggs\n- 1 teaspoon of vanilla extract\n- melted dark chocolate\n- 1/2 cup of flour\n- 1/4 teaspoon of baking powder\n- 1/4 teaspoon of salt",
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
                        "Preheat oven to 350°F (175°C). Melt butter, mix with sugar, eggs, and vanilla. Stir in cocoa, flour, baking powder, and salt. Pour into a greased pan and bake for 20-25 minutes.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "2. Chocolate Chip Cookies:",
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
                              'images/cookies.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=PFJAuAWxuvI"),
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
                        "- 1 cup of butter\n- 1 cup of sugar\n- 2 cups of flour\n- 1 teaspoon of baking soda\n- 1/2 teaspoon of salt\n- 1 cup of chocolate chips",
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
                        "Preheat oven to 350°F (175°C). Cream butter and sugar, mix in flour, baking soda, and salt. Stir in chocolate chips. Drop spoonful on a baking sheet and bake for 10-12 minutes.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                 Text(
                    "3. Apple Pie:",
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
                              'images/applepie.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=4-bN7_fGwv4"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape:  CircleBorder(),
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
                        "- 2 cups of all-purpose flour\n- 1 cup of butter\n- 1/4 cup of sugar\n- 6 cups of sliced apples\n- 1 cup of sugar\n- 2 tablespoons of flour\n- 1 teaspoon of cinnamon",
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
                        "Preheat oven to 425°F (220°C). Mix flour and butter to make dough, roll out and place in a pie dish. Combine apples, sugar, flour, and cinnamon, fill the pie crust. Cover with top crust, bake for 45-50 minutes.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 40),
                   Text(
                    "4. Cheesecake:",
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
                              'images/cheesecake.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=wNLxiRcNsPg"),
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
                        "- 1 1/2 cups of graham cracker crumbs\n- 1/2 cup of melted butter\n- 4 packages (8 oz each) of cream cheese\n- 1 cup of sugar\n- 1 teaspoon of vanilla extract\n- 4 eggs",
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
                        "Preheat oven to 325°F (165°C). Mix graham cracker crumbs and butter, press into a springform pan. Beat cream cheese, sugar, and vanilla until smooth, add eggs one at a time. Pour over crust, bake for 55-60 minutes.",
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "5. Pancake:",
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
                              'images/pancake.jpg',
                              width: 170,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                launchUrl("https://www.youtube.com/watch?v=NCMKedZvnyI"),
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
                        "- 1 cup of flour\n- 2 tablespoons of sugar\n- 1 tablespoon of baking powder\n- 1/2 teaspoon of salt\n- 1 cup of milk\n- 1 egg\n- 2 tablespoons of melted butter",
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
                        "Mix flour, sugar, baking powder, and salt. Add milk, egg, and melted butter, stir until smooth. Cook on a griddle over medium heat until bubbles form, flip and cook until golden.",
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
