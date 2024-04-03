import 'package:flutter/material.dart';

class customappbar extends StatelessWidget {
  const customappbar({super.key, required this.icon});
  final IconData icon;
  
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
            onPressed: (
              
            ) {
              
            },
            icon: Icon(icon),
            color: Colors.white.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
