import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello/widgets/coursecard.dart';
import 'package:ostello/widgets/allcourses.dart';
import 'package:ostello/widgets/icon_example.dart';
import 'package:ostello/widgets/panelcard.dart';
import 'package:ostello/widgets/refer_card.dart';
import 'package:ostello/widgets/toggle_button.dart';
import 'package:ostello/widgets/topper_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/profilepic.jpeg'), // Your avatar image path
              radius: 20,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Hi, ',
                    style: GoogleFonts.nunitoSans(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Krishna',
                        style: GoogleFonts.nunitoSans(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Better yourself each day everyday",
                  style: GoogleFonts.nunitoSans(fontSize: 14),
                ),
              ],
            ),
            const Spacer(),
            Stack(
              children: [
                const Icon(
                  Icons.notifications_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Image.asset(
                'assets/icons/home.png',
                width: 24,
                height: 24,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Image.asset(
                'assets/icons/batches.png',
                width: 24,
                height: 24,
              ),
            ),
            label: 'Batches',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/icons/message.png',
                    width: 24,
                    height: 24,
                  ),
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.purple,
                      child: Text(
                        '4',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Image.asset(
                'assets/icons/profile.png',
                width: 24,
                height: 24,
              ),
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: const Color.fromRGBO(124, 124, 124, 1),
        unselectedItemColor: const Color.fromRGBO(124, 124, 124, 1),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ToggleButton(),
              const SizedBox(
                height: 10,
              ),
              // cards slides
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // First card
                    Panelcard1(),
                    // Second card
                    Panelcard2(),
                  ],
                ),
              ),
              // top panel
              const SizedBox(
                height: 10,
              ),
              IconRowCard(),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Toppers of ABC",
                style: GoogleFonts.nunitoSans(
                    fontSize: 20, fontWeight: FontWeight.w800),
              ),
              TopperCardExample(),
              const SizedBox(
                height: 10,
              ),
              CourseCard(),
              const SizedBox(
                height: 10,
              ),
              Text(
                "All courses",
                style: GoogleFonts.nunitoSans(
                    fontSize: 20, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              CourseDetailCard(),
              const SizedBox(
                height: 10,
              ),
              ReferAndEarnCard(),
            ],
          ),
        ),
      ),
    );
  }
}
