import 'package:flutter/material.dart';
import 'package:kombazaar/config/config.dart';
import 'package:kombazaar/screens/home_screen.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(
              image: AssetImage(
                Paths.logo,
              ),
            ),
          ),
          //image
          const SizedBox(
            height: 40,
          ),
          //text
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'We elevate your outfit with quality shoes and shoecare products at an affordable price',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 87, 86, 85)),
            ),
          ),
          const Spacer(),

          //button
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Enter',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }),
            ),
          ),
          const SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }
}
