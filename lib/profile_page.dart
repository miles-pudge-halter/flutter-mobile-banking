import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50)),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xFFffeded), Colors.white],
                )),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                Text(
                  'Profile',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 30),
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2021/07/20/14/59/iron-man-6480952_960_720.jpg',
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Tony Stark',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'A/C no. 553-223-444',
                  style: TextStyle(
                    fontFamily: GoogleFonts.inconsolata().fontFamily,
                    fontSize: 16,
                    color: Colors.grey.shade700,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const SizedBox(height: 20),
          _buildActionRow('Exchange Rate', Icons.currency_exchange),
          Divider(height: 0.5, color: Colors.grey.shade300),
          _buildActionRow('Find ATM', Icons.location_pin),
          Divider(height: 0.5, color: Colors.grey.shade300),
          _buildActionRow('Terms & Conditions', Icons.article_outlined),
          Divider(height: 0.5, color: Colors.grey.shade300),
          _buildActionRow('Help & Support', Icons.help),
          Divider(height: 0.5, color: Colors.grey.shade300),
          _buildActionRow('Contact', Icons.call),
        ],
      ),
    );
  }

  Widget _buildActionRow(String title, IconData icon) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
