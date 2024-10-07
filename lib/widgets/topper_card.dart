import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello/components/topper_card.dart';

class TopperCardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: const Color.fromRGBO(255, 242, 226, 1),
            width: 2.0,
          ),
          boxShadow: [
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "NEET Toppers of Rajbir Institute",
                style: GoogleFonts.nunitoSans(
                    fontSize: 15, fontWeight: FontWeight.w800),
              ),
              const Row(
                children: [
                  TopperCard(
                      imagePath: 'assets/images/top1.jpeg',
                      name: 'Shree',
                      score: '720/720'),
                  TopperCard(
                      imagePath: 'assets/images/top2.jpeg',
                      name: 'Shree',
                      score: '720/720'),
                  TopperCard(
                      imagePath: 'assets/images/top3.jpeg',
                      name: 'Shree',
                      score: '720/720'),
                  TopperCard(
                      imagePath: 'assets/images/top4.jpeg',
                      name: 'Shree',
                      score: '720/720'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
