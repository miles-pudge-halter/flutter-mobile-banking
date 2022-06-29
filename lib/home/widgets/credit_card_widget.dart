import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(18)),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.shade200,
                offset: Offset.fromDirection(1.5, 10),
                blurRadius: 15,
                spreadRadius: 4,
                blurStyle: BlurStyle.normal,
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.blue.shade900,
                Colors.blue.shade800,
                Colors.blue.shade600,
                Colors.blue.shade400,
                Colors.blue.shade400,
                Colors.blue.shade600,
                Colors.blue.shade800
              ],
            ),
          ),
          width: 300,
          height: 170,
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Current Balance',
                style: TextStyle(
                  color: Color(0x99ffffff),
                  fontSize: 14,
                ),
              ),
              Text(
                '\$252,412.00',
                style: TextStyle(
                  fontFamily: GoogleFonts.inconsolata().fontFamily,
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          child: Text(
            '1234 1234 1234 1234',
            style: TextStyle(
              shadows: [
                Shadow(
                    offset: Offset(0, 3),
                    blurRadius: 3,
                    color: Colors.grey.shade800)
              ],
              fontFamily: GoogleFonts.inconsolata().fontFamily,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        const Positioned(
          right: 16,
          bottom: 16,
          child: Text(
            '09/25',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Image.asset(
            'assets/mastercard_logo.png',
            width: 55,
          ),
        )
      ],
    );
  }
}
