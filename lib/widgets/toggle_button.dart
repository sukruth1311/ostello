import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToggleButton extends StatelessWidget {
  const ToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        borderRadius: BorderRadius.circular(30),
        borderColor: Colors.grey.shade300,
        fillColor: Colors.black,
        selectedColor: Colors.white,
        disabledColor: Colors.grey.shade400,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              'Online',
              style: GoogleFonts.nunitoSans(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              'Offline',
              style: GoogleFonts.nunitoSans(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
        isSelected: [true, false],
        onPressed: (index) {
          // Handle button press logic
        },
      ),
    );
  }
}
