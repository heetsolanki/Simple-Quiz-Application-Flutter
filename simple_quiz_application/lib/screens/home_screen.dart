import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Welcome to my quiz app!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Text(
                'Test your knowledge fun quizzes on Java, HTML, and more. Ready to begin?',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
