import 'package:simple_quiz_application/exports.dart';

int javascriptBeginnerMarks = 0;
int javascriptIntermediateMarks = 0;
int javascriptDifficultMarks = 0;

class JavaScriptQuiz extends StatefulWidget {
  const JavaScriptQuiz({super.key});

  @override
  JavaScriptQuizState createState() => JavaScriptQuizState();
}

class JavaScriptQuizState extends State<JavaScriptQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'JavaScript Quiz',
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
                        if (quizAttempts['javascriptBeginnerQuiz'] == true) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'Quiz Already Attempted',
                                  style: TextStyle(fontSize: 18),
                                ),
                                content: Text(
                                  'You have already attempted this quiz.\n\nYour Score is $javascriptBeginnerMarks',
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
                                        '/javascriptBeginnerQuiz',
                                      );
                                      setState(() {
                                        javascriptBeginnerMarks = 0;
                                        quizAttempts['javascriptBeginnerQuiz'] =
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
                            javascriptBeginnerMarks = 0;
                          });
                          Navigator.pushNamed(
                            context,
                            '/javascriptBeginnerQuiz',
                          );
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
                        if (quizAttempts['javascriptIntermediateQuiz'] ==
                            true) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'Quiz Already Attempted',
                                  style: TextStyle(fontSize: 18),
                                ),
                                content: Text(
                                  'You have already attempted this quiz.\n\nYour Score is $javascriptIntermediateMarks',
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
                                        '/javascriptIntermediateQuiz',
                                      );
                                      setState(() {
                                        javascriptIntermediateMarks = 0;
                                        quizAttempts['javascriptIntermediateQuiz'] =
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
                            javascriptIntermediateMarks = 0;
                          });
                          Navigator.pushNamed(
                            context,
                            '/javascriptIntermediateQuiz',
                          );
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
                        if (quizAttempts['javascriptDifficultQuiz'] == true) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'Quiz Already Attempted',
                                  style: TextStyle(fontSize: 18),
                                ),
                                content: Text(
                                  'You have already attempted this quiz.\n\nYour Score is $javascriptDifficultMarks',
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
                                        '/javascriptDifficultQuiz',
                                      );
                                      setState(() {
                                        javascriptDifficultMarks = 0;
                                        quizAttempts['javascriptDifficultQuiz'] =
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
                            javascriptDifficultMarks = 0;
                          });
                          Navigator.pushNamed(
                            context,
                            '/javascriptDifficultQuiz',
                          );
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
