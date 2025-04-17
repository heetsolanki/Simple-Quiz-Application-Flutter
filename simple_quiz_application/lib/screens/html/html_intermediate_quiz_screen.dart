import 'package:flutter/material.dart';
import 'package:simple_quiz_application/screens/html/html_quiz_screen.dart';

import '../quiz_screen.dart';

class HtmlIntermediateQuiz extends StatefulWidget {
  const HtmlIntermediateQuiz({super.key});

  @override
  HtmlIntermediateQuizState createState() => HtmlIntermediateQuizState();
}

class HtmlIntermediateQuizState extends State<HtmlIntermediateQuiz> {
  int? _questionOne;
  int? _questionTwo;
  int? _questionThree;
  int? _questionFour;
  int? _questionFive;

  void checkAnswers() {
    setState(() {
      quizAttempts['htmlIntermediateQuiz'] = true;
      if (_questionOne == 1) htmlIntermediateMarks += 1;
      if (_questionTwo == 2) htmlIntermediateMarks += 1;
      if (_questionThree == 2) htmlIntermediateMarks += 1;
      if (_questionFour == 3) htmlIntermediateMarks += 1;
      if (_questionFive == 4) htmlIntermediateMarks += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HTML Intermediate Quiz',
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
                        '1. What is the correct way to create a numbered list?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        '<ol><li>Item</li></ol>',
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
                        '<ul><li>Item</li></ul>',
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
                        '<dl><li>Item</li></dl>',
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
                        '<nl><li>Item</li></nl>',
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
                        '2. Which attribute is used to open a link in a new tab?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'new="tab"',
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
                        'target="_blank"',
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
                        'target="newtab"',
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
                        'open="new"',
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
                        '3. What is the purpose of the <fieldset> tag?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'To group table rows',
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
                        'To group inputs in a form',
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
                        'To display an image caption',
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
                        'To style form labels',
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
                        '4. Which of the following is NOT a semantic HTML tag?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        '<article>',
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
                        '<section>',
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
                        '<div>',
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
                        '<footer>',
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
                        '5. How do you make a text input field required in a form?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      activeColor: activeColor,
                      title: const Text(
                        'mandatory',
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
                        'required="yes"',
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
                        'required',
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
                        'validate',
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
                      htmlIntermediateMarks = 0;
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
                'Your score is: $htmlIntermediateMarks',
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
