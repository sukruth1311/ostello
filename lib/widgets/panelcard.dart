import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Panelcard1 extends StatelessWidget {
  const Panelcard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.yellow[100],
      child: Container(
        width: 306,
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Live Sections on \nJEE Exams',
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Live Sections on JEE Exams',
                  style: GoogleFonts.nunitoSans(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Join',
                    style: GoogleFonts.nunitoSans(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 26),
              child: Expanded(
                child: Image.asset(
                  'assets/images/clip_img_1.png',
                  height: 100,
                  width: 120,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Panelcard2 extends StatelessWidget {
  const Panelcard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.orange[100],
      child: Container(
        width: 306,
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free courses',
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Live Sections on JEE Exams',
                  style: GoogleFonts.nunitoSans(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Join',
                    style: GoogleFonts.nunitoSans(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 26),
              child: Expanded(
                child: Image.asset(
                  'assets/images/clip_img_1.png',
                  height: 100,
                  width: 120,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
