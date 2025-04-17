import 'package:flutter/material.dart';
import 'package:simple_quiz_application/screens/html/html_quiz_screen.dart';

import '../quiz_screen.dart';

class HtmlDifficultQuiz extends StatefulWidget {
  const HtmlDifficultQuiz({super.key});

  @override
  HtmlDifficultQuizState createState() => HtmlDifficultQuizState();
}

class HtmlDifficultQuizState extends State<HtmlDifficultQuiz> {
  int? _questionOne;
  int? _questionTwo;
  int? _questionThree;
  int? _questionFour;
  int? _questionFive;

  void checkAnswers() {
    setState(() {
      quizAttempts['htmlDifficultQuiz'] = true;
      if (_questionOne == 3) htmlDifficultMarks += 1;
      if (_questionTwo == 3) htmlDifficultMarks += 1;
      if (_questionThree == 2) htmlDifficultMarks += 1;
      if (_questionFour == 1) htmlDifficultMarks += 1;
      if (_questionFive == 2) htmlDifficultMarks += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HTML Difficult Quiz',
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
                        '1. Which tag is used to define metadata about an HTML document?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        '<meta>',
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
                        '<info>',
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
                        '<data>',
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
                        '<head>',
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
                        '2. What does the rel="noopener noreferrer" attribute do in anchor tags?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'Prevents the link from being indexed',
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
                        'Prevents phishing attacks and improves security',
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
                        'Hides the URL from the user',
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
                        'Only allows internal links',
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
                        '3. Which element is used to embed an external web page within the current HTML document?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        '<object>',
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
                        '<embed>',
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
                        '<iframe>',
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
                        '<include>',
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
                        '4. What is the difference between <strong> and <b> tags?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        '<strong> is deprecated, <b> is not',
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
                        '<b> adds semantic meaning, <strong> does not',
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
                        '<strong> is semantic, <b> is just stylistic',
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
                        'They are exactly the same',
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
                        '5. Which HTML5 element is used to define content that should be hidden until needed?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        '<hidden>',
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
                        '<section>',
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
                        '<details>',
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
                        '<aside>',
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
                      htmlDifficultMarks = 0;
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
                'Your score is: $htmlDifficultMarks',
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
