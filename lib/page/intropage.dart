import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          //logo
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset(
              "image/nike-logo.png",
              height: 240,
            ),
          ),
          
          const SizedBox(
            height: 48,
          ),
          //title
          const Text(
            "Just DO It",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),

          const SizedBox(
            height: 24,
          ),
          //subtitle
          const Text(
              'Brand New sneakers and custom kicks mode with premuym qual',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center),

          const SizedBox(
            height: 48,
          ),
          //shopbutton
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 145, vertical: 18),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "homepage");
              },
              child: const Text(
                "Shop Now",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ))
        ],
      ),
    );
  }
}
