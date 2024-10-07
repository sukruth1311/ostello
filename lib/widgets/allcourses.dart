import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseDetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Mr. Sampath',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 16,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                'assets/images/mainimg.jpeg',
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ARAMBH - NEET DROPPER BATCH',
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.menu_book, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      'Full Syllabus',
                      style: GoogleFonts.nunitoSans(),
                    ),
                    const SizedBox(width: 16),
                    const Icon(Icons.people, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      'For NEET 2025 & 2026',
                      style: GoogleFonts.nunitoSans(),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.video_camera_back, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      'Live + Recorded',
                      style: GoogleFonts.nunitoSans(),
                    ),
                    const SizedBox(width: 16),
                    const Icon(Icons.calendar_today, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      'Batch starts on 16th Aug',
                      style: GoogleFonts.nunitoSans(),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '₹5000 ',
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '10000',
                            style: GoogleFonts.nunitoSans(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey,
                            ),
                          ),
                          TextSpan(
                            text: ' 50% OFF',
                            style: GoogleFonts.nunitoSans(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(119, 116, 213, 1),
                        textStyle: GoogleFonts.nunitoSans(
                          color: Colors.white,
                        ),
                      ),
                      child: Text(
                        'Join',
                        style: GoogleFonts.nunitoSans(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
