import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_app/screens/home_screen.dart';
import 'package:workout_app/screens/welcome_screen.dart';

class DescriptionOne extends StatefulWidget {
  const DescriptionOne({super.key});

  @override
  State<DescriptionOne> createState() => _DescriptionOneState();
}

class _DescriptionOneState extends State<DescriptionOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.5),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/black/16.jpg"),
            fit: BoxFit.cover,
            opacity: 0.85,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      color: const Color(0xFF40D876),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Center(
                      child: Text(
                        "3 hours",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.dangerous,
                    color: Colors.white,
                    size: 35,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(25),
                    border:
                        Border.all(color: const Color(0xFF40D876), width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "18",
                            style: GoogleFonts.bebasNeue(
                                fontSize: 20,
                                color: const Color(0xFF40D876),
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            "Moves",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "18",
                            style: GoogleFonts.bebasNeue(
                                fontSize: 20,
                                color: const Color(0xFF40D876),
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            "Moves",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "18",
                            style: GoogleFonts.bebasNeue(
                                fontSize: 20,
                                color: const Color(0xFF40D876),
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            "Moves",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Advanced Workout",
                        style: GoogleFonts.lato(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _chip("Description"),
                        _chip("Feedback"),
                        _chip("Related"),
                        _chip("Description"),
                        _chip("Feedback"),
                        _chip("Related"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          width: MediaQuery.of(context).size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              textAlign: TextAlign.justify,
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed ante metus. Phasellus amputate efficitur nisl sed laoreet. Sed blandit volutpat metus semper dignissim. Pellentesque habitant morbi tristique senectus et.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          width: MediaQuery.of(context).size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              textAlign: TextAlign.justify,
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed ante metus. Phasellus vulputate efficitur nisl sed laoreet. Sed blandit volutpat metus semper dignissim. Pellentesque habitant morbi tristique senectus et.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          width: MediaQuery.of(context).size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              textAlign: TextAlign.justify,
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed ante metus. Phasellus vulputate efficitur nisl sed laoreet. Sed blandit volutpat metus semper dignissim. Pellentesque habitant morbi tristique senectus et.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          width: MediaQuery.of(context).size.width * 0.95,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              textAlign: TextAlign.justify,
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed ante metus. Phasellus vulputate efficitur nisl sed laoreet. Sed blandit volutpat metus semper dignissim. Pellentesque habitant morbi tristique senectus et.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFF40D876),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Begin To Train For Rs.10,000",
                      style: GoogleFonts.lato(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    border:
                        Border.all(color: const Color(0xFF40D876), width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Begin Train Demo",
                      style: GoogleFonts.lato(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black.withOpacity(0.5),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
      ),
    );
  }

  Widget _chip(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
