import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_app/screens/description_one.dart';
import 'package:workout_app/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final List<String> levels = ["Beginner", "Trained", "Professional"];
  final List<String> description = [
    "I have never trained before.",
    "I have had prior training.",
    "I am a training professional.",
  ];
  final List<Icon> iconsList = [
    const Icon(Icons.sports_gymnastics),
    const Icon(Icons.sports_handball),
    const Icon(Icons.sports_martial_arts)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.5),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/black/9.jpg"),
              fit: BoxFit.cover,
              opacity: 0.85),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Text(
                    "HARD",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 32,
                      color: Colors.white,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Text(
                    "ELEMENT",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 32,
                      color: const Color(0xFF40D876),
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Text(
                    "About You",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 42,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "We want to know about your workout preference. \nPlease follow the steps.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 210,
                            width: 195,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                    color: const Color(0xFF40D876)
                                        .withOpacity(0.7),
                                    width: 2)),
                            child: ListTile(
                              title: Text(
                                "I am \n${levels[index]}",
                                style: GoogleFonts.bebasNeue(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: const Color(0xFF40D876)),
                                textAlign: TextAlign.center,
                              ),
                              subtitle: Text(
                                description[index],
                                style: GoogleFonts.lato(
                                    fontSize: 19,
                                    color: const Color(0xFF40D876)),
                                textAlign: TextAlign.center,
                              ),
                              titleAlignment: ListTileTitleAlignment.threeLine,
                            ),
                          ),
                        );
                      },
                      itemCount: levels.length,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Skip Intro",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: Container(
                      width: 139,
                      height: 39,
                      decoration: BoxDecoration(
                        color: const Color(0xFF40D876),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Next",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black.withOpacity(0.5),
        ),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.transparent),
            ),
          ),
          child: BottomNavigationBar(
            elevation: 0, // Set elevation to 0 to remove the shadow
            selectedItemColor: const Color(0xFF40D876),
            unselectedItemColor: Colors.white,
            onTap: (index) {
              if (index == 0) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const WelcomeScreen(); // Replace with your actual screen
                }));
              }
              if (index == 1) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomeScreen(); // Replace with your actual screen
                }));
              }
              if (index == 2) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const DescriptionOne(); // Replace with your actual screen
                }));
              } else {
                // Handle other item taps if necessary
              }
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Welcome",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.fitness_center_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_gymnastics),
                label: "Description",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: "Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
