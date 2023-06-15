import 'package:flutter/material.dart';
import 'package:kifeb/food_list.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 150),
            child: Column(
              children: [
                Image.asset(
                  "assets/hero.png",
                  width: 200,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Anda Lapar?",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins-Regular"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                    width: 220,
                    child: Text(
                      "Yuk jelajahi aplikasi kami, dan temukan makanan Favoritmu",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black38,
                          fontFamily: "Poppins-Regular"),
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const FoodList();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      minimumSize: Size(200, 40)),
                  child: const Text(
                    "Cari Makan",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
