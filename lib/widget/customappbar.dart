import 'package:flutter/material.dart';

class customappbar extends StatelessWidget {
   customappbar({super.key, required this.icon, required this.onPressed});
  final IconData icon;
final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Notes",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: onPressed,
            icon: Icon(icon),
            color: Colors.white.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
