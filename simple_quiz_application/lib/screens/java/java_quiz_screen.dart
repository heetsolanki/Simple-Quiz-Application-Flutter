import 'package:simple_quiz_application/exports.dart';

int javaBeginnerMarks = 0;
int javaIntermediateMarks = 0;
int javaDifficultMarks = 0;

class JavaQuiz extends StatefulWidget {
  const JavaQuiz({super.key});

  @override
  JavaQuizState createState() => JavaQuizState();
}

class JavaQuizState extends State<JavaQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Java Quiz',
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
                        if (quizAttempts['javaBeginnerQuiz'] == true) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'Quiz Already Attempted',
                                  style: TextStyle(fontSize: 18),
                                ),
                                content: Text(
                                  'You have already attempted this quiz.\n\nYour Score is $javaBeginnerMarks',
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
                                        '/javaBeginnerQuiz',
                                      );
                                      setState(() {
                                        javaBeginnerMarks = 0;
                                        quizAttempts['javaBeginnerQuiz'] =
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
                            javaBeginnerMarks = 0;
                          });
                          Navigator.pushNamed(context, '/javaBeginnerQuiz');
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
                        if (quizAttempts['javaIntermediateQuiz'] == true) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'Quiz Already Attempted',
                                  style: TextStyle(fontSize: 18),
                                ),
                                content: Text(
                                  'You have already attempted this quiz.\n\nYour Score is $javaIntermediateMarks',
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
                                        '/javaIntermediateQuiz',
                                      );
                                      setState(() {
                                        javaIntermediateMarks = 0;
                                        quizAttempts['javaIntermediateQuiz'] =
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
                            javaIntermediateMarks = 0;
                          });
                          Navigator.pushNamed(context, '/javaIntermediateQuiz');
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
                        if (quizAttempts['javaDifficultQuiz'] == true) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'Quiz Already Attempted',
                                  style: TextStyle(fontSize: 18),
                                ),
                                content: Text(
                                  'You have already attempted this quiz.\n\nYour Score is $javaDifficultMarks',
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
                                        '/javaDifficultQuiz',
                                      );
                                      setState(() {
                                        javaDifficultMarks = 0;
                                        quizAttempts['javaDifficultQuiz'] =
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
                            javaDifficultMarks = 0;
                          });
                          Navigator.pushNamed(context, '/javaDifficultQuiz');
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
