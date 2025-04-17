import 'package:flutter/material.dart';

import '../quiz_screen.dart';
import 'java_quiz_screen.dart';

class JavaDifficultQuiz extends StatefulWidget {
  const JavaDifficultQuiz({super.key});

  @override
  JavaDifficultQuizState createState() => JavaDifficultQuizState();
}

class JavaDifficultQuizState extends State<JavaDifficultQuiz> {
  int? _questionOne;
  int? _questionTwo;
  int? _questionThree;
  int? _questionFour;
  int? _questionFive;

  void checkAnswers() {
    setState(() {
      quizAttempts['javaDifficultQuiz'] = true;
      if (_questionOne == 1) javaDifficultMarks += 1;
      if (_questionTwo == 3) javaDifficultMarks += 1;
      if (_questionThree == 2) javaDifficultMarks += 1;
      if (_questionFour == 1) javaDifficultMarks += 1;
      if (_questionFive == 3) javaDifficultMarks += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Java Difficult Quiz',
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
                        '1. What is the default value of a boolean in Java?',
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
                        'false',
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
                      title: const Text('true', style: TextStyle(fontSize: 15)),
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
                      title: const Text('df', style: TextStyle(fontSize: 15)),
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
                      title: const Text('0', style: TextStyle(fontSize: 15)),
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
                        '2. Which keyword prevents a method from being overridden?',
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
                        'static',
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
                        'const',
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
                        'final',
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
                        'sealed',
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
                        '3. What is the purpose of the transient keyword?',
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
                        'To pause a thread',
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
                      title: const Text(
                        'To pause a thread',
                        style: TextStyle(fontSize: 15),
                      ),
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
                      title: const Text(
                        'To synchronize data',
                        style: TextStyle(fontSize: 15),
                      ),
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
                        'To make a variable constant',
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
                        '4. What does JVM stand for?',
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
                        'Java Virtual Machine',
                        style: TextStyle(fontSize: 15),
                      ),
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
                      title: const Text(
                        'Java Variable Module',
                        style: TextStyle(fontSize: 15),
                      ),
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
                      title: const Text(
                        'Java Version Manager',
                        style: TextStyle(fontSize: 15),
                      ),
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
                      title: const Text(
                        'Java Volatile Memory',
                        style: TextStyle(fontSize: 15),
                      ),
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
                        '5. What will happen if the main() method is declared as private?',
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
                        'The program will run normally',
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
                        'A runtime exception will occur',
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
                      title: const Text(
                        'The program will compile but not run',
                        style: TextStyle(fontSize: 15),
                      ),
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
                        'It will be treated as an overloaded method',
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
                      javaDifficultMarks = 0;
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
                'Your score is: $javaDifficultMarks',
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
