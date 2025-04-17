import 'package:flutter/material.dart';

import '../quiz_screen.dart';
import 'java_quiz_screen.dart';

class JavaBeginnerQuiz extends StatefulWidget {
  const JavaBeginnerQuiz({super.key});

  @override
  JavaBeginnerQuizState createState() => JavaBeginnerQuizState();
}

class JavaBeginnerQuizState extends State<JavaBeginnerQuiz> {
  int? _questionOne;
  int? _questionTwo;
  int? _questionThree;
  int? _questionFour;
  int? _questionFive;

  void checkAnswers() {
    setState(() {
      quizAttempts['javaBeginnerQuiz'] = true;
      if (_questionOne == 2) javaBeginnerMarks += 1;
      if (_questionTwo == 3) javaBeginnerMarks += 1;
      if (_questionThree == 4) javaBeginnerMarks += 1;
      if (_questionFour == 2) javaBeginnerMarks += 1;
      if (_questionFive == 3) javaBeginnerMarks += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Java Beginner Quiz',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color.fromRGBO(0, 112, 116, 1),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //Question 1
            Card(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10, right: 10),
                      child: Text(
                        '1. Which keyword is used to define a class in Java?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'define',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 1,
                      groupValue: _questionOne,
                      onChanged: (value) {
                        setState(() {
                          _questionOne = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'class',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 2,
                      groupValue: _questionOne,
                      onChanged: (value) {
                        setState(() {
                          _questionOne = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'struct',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 3,
                      groupValue: _questionOne,
                      onChanged: (value) {
                        setState(() {
                          _questionOne = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'object',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 4,
                      groupValue: _questionOne,
                      onChanged: (value) {
                        setState(() {
                          _questionOne = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Question 2
            Card(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10, right: 10),
                      child: Text(
                        '2. What is the entry point of a Java program?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'start()',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 1,
                      groupValue: _questionTwo,
                      onChanged: (value) {
                        setState(() {
                          _questionTwo = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'main()',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 2,
                      groupValue: _questionTwo,
                      onChanged: (value) {
                        setState(() {
                          _questionTwo = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'public static void main(String[] args)',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 3,
                      groupValue: _questionTwo,
                      onChanged: (value) {
                        setState(() {
                          _questionTwo = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'init()',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 4,
                      groupValue: _questionTwo,
                      onChanged: (value) {
                        setState(() {
                          _questionTwo = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            //Question 3
            Card(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10, right: 10),
                      child: Text(
                        '3. Which of the following is a valid data type in Java?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'decimal',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 1,
                      groupValue: _questionThree,
                      onChanged: (value) {
                        setState(() {
                          _questionThree = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text('real', style: TextStyle(fontSize: 15)),
                      value: 2,
                      groupValue: _questionThree,
                      onChanged: (value) {
                        setState(() {
                          _questionThree = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text('num', style: TextStyle(fontSize: 15)),
                      value: 3,
                      groupValue: _questionThree,
                      onChanged: (value) {
                        setState(() {
                          _questionThree = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'float',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 4,
                      groupValue: _questionThree,
                      onChanged: (value) {
                        setState(() {
                          _questionThree = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            //Question 4
            Card(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10, right: 10),
                      child: Text(
                        '4. What symbol is used to end a statement in Java?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text('.', style: TextStyle(fontSize: 15)),
                      value: 1,
                      groupValue: _questionFour,
                      onChanged: (value) {
                        setState(() {
                          _questionFour = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(';', style: TextStyle(fontSize: 15)),
                      value: 2,
                      groupValue: _questionFour,
                      onChanged: (value) {
                        setState(() {
                          _questionFour = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(':', style: TextStyle(fontSize: 15)),
                      value: 3,
                      groupValue: _questionFour,
                      onChanged: (value) {
                        setState(() {
                          _questionFour = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(',', style: TextStyle(fontSize: 15)),
                      value: 4,
                      groupValue: _questionFour,
                      onChanged: (value) {
                        setState(() {
                          _questionFour = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            //Question 5
            Card(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10, right: 10),
                      child: Text(
                        '5. Which of the following is NOT a Java keyword?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'static',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 1,
                      groupValue: _questionFive,
                      onChanged: (value) {
                        setState(() {
                          _questionFive = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'finally',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 2,
                      groupValue: _questionFive,
                      onChanged: (value) {
                        setState(() {
                          _questionFive = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text('then', style: TextStyle(fontSize: 15)),
                      value: 3,
                      groupValue: _questionFive,
                      onChanged: (value) {
                        setState(() {
                          _questionFive = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'switch',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 4,
                      groupValue: _questionFive,
                      onChanged: (value) {
                        setState(() {
                          _questionFive = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      javaBeginnerMarks = 0;
                      _questionOne = 0;
                      _questionTwo = 0;
                      _questionThree = 0;
                      _questionFour = 0;
                      _questionFive = 0;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        duration: Duration(seconds: 1),
                        content: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Quiz Reset Successfully!!',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: const Text('Reset', style: TextStyle(fontSize: 20)),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      checkAnswers();
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        duration: Duration(seconds: 1),
                        content: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Quiz Submitted Successfully!!',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  child: const Text('Submit', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back', style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Your score is: $javaBeginnerMarks',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
