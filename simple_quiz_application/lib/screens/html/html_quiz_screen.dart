import 'package:simple_quiz_application/exports.dart';

int htmlBeginnerMarks = 0;
int htmlIntermediateMarks = 0;
int htmlDifficultMarks = 0;

class HtmlQuiz extends StatefulWidget {
  const HtmlQuiz({super.key});

  @override
  HtmlQuizState createState() => HtmlQuizState();
}

class HtmlQuizState extends State<HtmlQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HTML Quiz',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color.fromRGBO(0, 112, 116, 1),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 150,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Beginner Quiz', style: TextStyle(fontSize: 20)),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                      ),
                      child: const Text("Start Quiz"),
                      onPressed: () {
                        if (quizAttempts['htmlBeginnerQuiz'] == true) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'Quiz Already Attempted',
                                  style: TextStyle(fontSize: 18),
                                ),
                                content: Text(
                                  'You have already attempted this quiz.\n\nYour Score is $htmlBeginnerMarks',
                                ),
                                actions: [
                                  // Cancel Button
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: Colors.redAccent,
                                      padding: EdgeInsets.only(
                                        top: 15,
                                        bottom: 15,
                                        left: 10,
                                        right: 10,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  // Reattempt Button
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: const Color.fromRGBO(
                                        0,
                                        112,
                                        116,
                                        1,
                                      ),
                                      padding: EdgeInsets.only(
                                        top: 15,
                                        bottom: 15,
                                        left: 10,
                                        right: 10,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pushNamed(
                                        context,
                                        '/htmlBeginnerQuiz',
                                      );
                                      setState(() {
                                        htmlBeginnerMarks = 0;
                                        quizAttempts['htmlBeginnerQuiz'] =
                                            false;
                                      });
                                    },
                                    child: const Text(
                                      'Reattempt',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          setState(() {
                            htmlBeginnerMarks = 0;
                          });
                          Navigator.pushNamed(context, '/htmlBeginnerQuiz');
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 150,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Intermediate Quiz',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                      ),
                      onPressed: () {
                        if (quizAttempts['htmlIntermediateQuiz'] == true) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'Quiz Already Attempted',
                                  style: TextStyle(fontSize: 18),
                                ),
                                content: Text(
                                  'You have already attempted this quiz.\n\nYour Score is $htmlIntermediateMarks',
                                ),
                                actions: [
                                  // Cancel Button
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: Colors.redAccent,
                                      padding: EdgeInsets.only(
                                        top: 15,
                                        bottom: 15,
                                        left: 10,
                                        right: 10,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  // Reattempt Button
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: const Color.fromRGBO(
                                        0,
                                        112,
                                        116,
                                        1,
                                      ),
                                      padding: EdgeInsets.only(
                                        top: 15,
                                        bottom: 15,
                                        left: 10,
                                        right: 10,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pushNamed(
                                        context,
                                        '/htmlIntermediateQuiz',
                                      );
                                      setState(() {
                                        htmlIntermediateMarks = 0;
                                        quizAttempts['htmlIntermediateQuiz'] =
                                            false;
                                      });
                                    },
                                    child: const Text(
                                      'Reattempt',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          setState(() {
                            htmlIntermediateMarks = 0;
                          });
                          Navigator.pushNamed(context, '/htmlIntermediateQuiz');
                        }
                      },
                      child: const Text("Start Quiz"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 150,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Difficult Quiz',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                      ),
                      onPressed: () {
                        if (quizAttempts['htmlDifficultQuiz'] == true) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'Quiz Already Attempted',
                                  style: TextStyle(fontSize: 18),
                                ),
                                content: Text(
                                  'You have already attempted this quiz.\n\nYour Score is $htmlDifficultMarks',
                                ),
                                actions: [
                                  // Cancel Button
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: Colors.redAccent,
                                      padding: EdgeInsets.only(
                                        top: 15,
                                        bottom: 15,
                                        left: 10,
                                        right: 10,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Cancel',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  // Reattempt Button
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: const Color.fromRGBO(
                                        0,
                                        112,
                                        116,
                                        1,
                                      ),
                                      padding: EdgeInsets.only(
                                        top: 15,
                                        bottom: 15,
                                        left: 10,
                                        right: 10,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pushNamed(
                                        context,
                                        '/htmlDifficultQuiz',
                                      );
                                      setState(() {
                                        htmlDifficultMarks = 0;
                                        quizAttempts['htmlDifficultQuiz'] =
                                            false;
                                      });
                                    },
                                    child: const Text(
                                      'Reattempt',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          setState(() {
                            htmlDifficultMarks = 0;
                          });
                          Navigator.pushNamed(context, '/htmlDifficultQuiz');
                        }
                      },
                      child: const Text("Start Quiz"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
