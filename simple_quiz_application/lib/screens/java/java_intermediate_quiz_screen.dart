import 'package:flutter/material.dart';

import '../quiz_screen.dart';
import 'java_quiz_screen.dart';

class JavaIntermediateQuiz extends StatefulWidget {
  const JavaIntermediateQuiz({super.key});

  @override
  JavaIntermediateQuizState createState() => JavaIntermediateQuizState();
}

class JavaIntermediateQuizState extends State<JavaIntermediateQuiz> {
  int? _questionOne;
  int? _questionTwo;
  int? _questionThree;
  int? _questionFour;
  int? _questionFive;

  void checkAnswers() {
    setState(() {
      quizAttempts['javaIntermediateQuiz'] = true;
      if (_questionOne == 1) javaIntermediateMarks += 1;
      if (_questionTwo == 2) javaIntermediateMarks += 1;
      if (_questionThree == 2) javaIntermediateMarks += 1;
      if (_questionFour == 1) javaIntermediateMarks += 1;
      if (_questionFive == 3) javaIntermediateMarks += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Java Intermediate Quiz',
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
                        '1. Which collection class stores unique elements only?',
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
                        'HashSet',
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
                        'ArrayList',
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
                        'LinkedList',
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
                        'Vector',
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
                        '2. What is method overloading?',
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
                        'Same method in parent and child class',
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
                        'Multiple methods with the same name but different parameters',
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
                        'Redefining a method',
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
                        'A method calling another method',
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
                        '3. What will the expression 10 / 3 return in Java?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text('3.33', style: TextStyle(fontSize: 15)),
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
                      title: const Text('3', style: TextStyle(fontSize: 15)),
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
                      title: const Text('3.0', style: TextStyle(fontSize: 15)),
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
                        'Compilation error',
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
                        '4. Which keyword is used to inherit a class in Java?',
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
                        'extends',
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
                        'implements',
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
                        'inherits',
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
                        'super',
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
                        '5. Which interface must be implemented to create a thread in Java?',
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
                        'Callable',
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
                        'Threadable',
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
                        'Runnable',
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
                        'Executer',
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
                      javaIntermediateMarks = 0;
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
                'Your score is: $javaIntermediateMarks',
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
