import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_app/modal/category.dart';
import 'package:workout_app/screens/description_one.dart';
import 'package:workout_app/screens/welcome_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Category> categoryList = [
    Category(
        imageUrl: "assets/images/black/1.jpg", name: "Upper Body Exercises"),
    Category(
        imageUrl: "assets/images/black/3.jpg", name: "Abdominal Exercises"),
    Category(imageUrl: "assets/images/black/4.jpg", name: "Shoulder Exercises"),
    Category(
        imageUrl: "assets/images/black/13.jpg",
        name: "Cardio-vascular Exercises"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.5),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/black/13.jpg"),
              fit: BoxFit.cover,
              opacity: 0.86,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
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
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
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
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: CircleAvatar(
                  backgroundColor: Color(0xFF40D876),
                  radius: 35,
                  child: Center(
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Text(
                      "Find your Workout",
                      style: GoogleFonts.lato(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: const Icon(
                      Icons.filter_alt_outlined,
                      color: Color(0xFF40D876),
                      size: 32,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width * 0.75,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF40D876).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextFormField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: "Search Workout",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _chip("Popular"),
                    _chip("Hard Workout"),
                    _chip("Crossfit"),
                    _chip("Full Body"),
                    _chip("Yoga"),
                    _chip("Cardio"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8, left: 8),
                    child: Text(
                      "Popular Workouts",
                      style: GoogleFonts.lato(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: const Icon(
                      Icons.sports_gymnastics,
                      color: Color(0xFF40D876),
                      size: 32,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(categoryList[index].imageUrl),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                        ),
                        Text(
                          categoryList[index].name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    );
                  },
                  itemCount: categoryList.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
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
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.fitness_center_outlined),
                label: "Workout",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_gymnastics),
                label: "Levels",
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

  Widget _chip(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      padding: const EdgeInsets.all(8.0),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFF40D876),
        ),
      ),
    );
  }
}
