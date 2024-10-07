import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopperCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String score;

  const TopperCard({
    required this.imagePath,
    required this.name,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12.0),
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            name,
            style: GoogleFonts.nunitoSans(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            score,
            style: GoogleFonts.nunitoSans(
              fontSize: 16.0,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
