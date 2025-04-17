import 'package:simple_quiz_application/exports.dart';

class HtmlBeginnerQuiz extends StatefulWidget {
  const HtmlBeginnerQuiz({super.key});

  @override
  HtmlBeginnerQuizState createState() => HtmlBeginnerQuizState();
}

class HtmlBeginnerQuizState extends State<HtmlBeginnerQuiz> {
  bool _isSubmitted = false;
  List<int?> selectedAnswer = List.filled(5, null);
  List<int> correctAnswer = [3, 3, 2, 1, 2];
  List<Color?> color = List.filled(5, null);

  void checkAnswers() {
    setState(() {
      for (int i = 0; i < 5; i++) {
        if (selectedAnswer[i] == correctAnswer[i]) {
          color[i] = Colors.green;
          htmlBeginnerMarks++;
        } else {
          color[i] = Colors.red;
        }
      }
      quizAttempts['htmlBeginnerQuiz'] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HTML Beginner Quiz',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color.fromRGBO(0, 112, 116, 1),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SmoothListView(
          duration: Duration(seconds: 50),
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
                        '1. What does HTML stand for?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 10),
                    RadioListTile(
                      selected: selectedAnswer[0] == 1,
                      selectedTileColor: color[0],
                      activeColor: activeColor,
                      title: Text(
                        'High Tech Modern Language',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 1,
                      groupValue: selectedAnswer[0],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[0] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[0] == 2,
                      selectedTileColor: color[0],
                      activeColor: activeColor,
                      title: Text(
                        'Hyperlink and Text Markup Language',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 2,
                      groupValue: selectedAnswer[0],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[0] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[0] == 3,
                      selectedTileColor: color[0],
                      activeColor: activeColor,
                      title: Text(
                        'Hyper Text Markup Language',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 3,
                      groupValue: selectedAnswer[0],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[0] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[0] == 4,
                      selectedTileColor: color[0],
                      activeColor: activeColor,
                      title: Text(
                        'Home Tool Markup Language',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 4,
                      groupValue: selectedAnswer[0],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[0] = value as int?;
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
                        '2. Which HTML element is used to define the title of a document?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 10),
                    RadioListTile(
                      selected: selectedAnswer[1] == 1,
                      selectedTileColor: color[1],
                      activeColor: activeColor,
                      title: Text('<meta>', style: TextStyle(fontSize: 15)),
                      value: 1,
                      groupValue: selectedAnswer[1],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[1] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[1] == 2,
                      selectedTileColor: color[1],
                      activeColor: activeColor,
                      title: Text('<header>', style: TextStyle(fontSize: 15)),
                      value: 2,
                      groupValue: selectedAnswer[1],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[1] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[1] == 3,
                      selectedTileColor: color[1],
                      activeColor: activeColor,
                      title: Text('<title>', style: TextStyle(fontSize: 15)),
                      value: 3,
                      groupValue: selectedAnswer[1],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[1] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[1] == 4,
                      selectedTileColor: color[1],
                      activeColor: activeColor,
                      title: Text('<head>', style: TextStyle(fontSize: 15)),
                      value: 4,
                      groupValue: selectedAnswer[1],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[1] = value as int?;
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
                        '3. Which tag is used to create a hyperlink in HTML?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      selected: selectedAnswer[2] == 1,
                      selectedTileColor: color[2],
                      activeColor: activeColor,
                      title: Text('<link>', style: TextStyle(fontSize: 15)),
                      value: 1,
                      groupValue: selectedAnswer[2],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[2] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[2] == 2,
                      selectedTileColor: color[2],
                      activeColor: activeColor,
                      title: Text('<a>', style: TextStyle(fontSize: 15)),
                      value: 2,
                      groupValue: selectedAnswer[2],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[2] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[2] == 3,
                      selectedTileColor: color[2],
                      activeColor: activeColor,
                      title: Text('<href>', style: TextStyle(fontSize: 15)),
                      value: 3,
                      groupValue: selectedAnswer[2],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[2] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[2] == 4,
                      selectedTileColor: color[2],
                      activeColor: activeColor,
                      title: Text(
                        '<hyperlink>',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 4,
                      groupValue: selectedAnswer[2],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[2] = value as int?;
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
                        '4. How do you insert an image in HTML?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 10),
                    RadioListTile(
                      selected: selectedAnswer[3] == 1,
                      selectedTileColor: color[3],
                      activeColor: activeColor,
                      title: Text(
                        '<img src="image.jpg">',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 1,
                      groupValue: selectedAnswer[3],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[3] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[3] == 2,
                      selectedTileColor: color[3],
                      activeColor: activeColor,
                      title: Text(
                        '<image src="image.jpg">',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 2,
                      groupValue: selectedAnswer[3],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[3] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[3] == 3,
                      selectedTileColor: color[3],
                      activeColor: activeColor,
                      title: Text(
                        'src img="image.jpg"',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 3,
                      groupValue: selectedAnswer[3],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[3] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[3] == 4,
                      selectedTileColor: color[3],
                      activeColor: activeColor,
                      title: Text(
                        '<picture="image.jpg">',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 4,
                      groupValue: selectedAnswer[3],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[3] = value as int?;
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
                        '5. Which tag is used for a line break?',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 10),
                    RadioListTile(
                      selected: selectedAnswer[4] == 1,
                      selectedTileColor: color[4],
                      activeColor: activeColor,
                      title: Text('<lb>', style: TextStyle(fontSize: 15)),
                      value: 1,
                      groupValue: selectedAnswer[4],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[4] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[4] == 2,
                      selectedTileColor: color[4],
                      activeColor: activeColor,
                      title: Text('<br>', style: TextStyle(fontSize: 15)),
                      value: 2,
                      groupValue: selectedAnswer[4],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[4] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[4] == 3,
                      selectedTileColor: color[4],
                      activeColor: activeColor,
                      title: Text('<break>', style: TextStyle(fontSize: 15)),
                      value: 3,
                      groupValue: selectedAnswer[4],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[4] = value as int?;
                                });
                              },
                    ),
                    RadioListTile(
                      selected: selectedAnswer[4] == 4,
                      selectedTileColor: color[4],
                      activeColor: activeColor,
                      title: Text('<hr>', style: TextStyle(fontSize: 15)),
                      value: 4,
                      groupValue: selectedAnswer[4],
                      onChanged:
                          _isSubmitted
                              ? null
                              : (value) {
                                setState(() {
                                  selectedAnswer[4] = value as int?;
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
                      _isSubmitted = false;
                      htmlBeginnerMarks = 0;
                      for (int i = 0; i < 5; i++) {
                        selectedAnswer[i] = 0;
                        color[i] = null;
                      }
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
                  child: Text('Reset', style: TextStyle(fontSize: 20)),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isSubmitted = true;
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
                  child: Text('Submit', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 10,
                  ),
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
                'Your score is: $htmlBeginnerMarks',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
