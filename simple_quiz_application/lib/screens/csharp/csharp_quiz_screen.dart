import 'package:simple_quiz_application/exports.dart';

int csharpBeginnerMarks = 0;
int csharpIntermediateMarks = 0;
int csharpDifficultMarks = 0;

class CSharpQuiz extends StatefulWidget {
  const CSharpQuiz({super.key});

  @override
  CSharpQuizState createState() => CSharpQuizState();
}

class CSharpQuizState extends State<CSharpQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'C# Quiz',
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
                        if (quizAttempts['csharpBeginnerQuiz'] == true) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'Quiz Already Attempted',
                                  style: TextStyle(fontSize: 18),
                                ),
                                content: Text(
                                  'You have already attempted this quiz.\n\nYour Score is $csharpBeginnerMarks',
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
                                        '/csharpBeginnerQuiz',
                                      );
                                      setState(() {
                                        csharpBeginnerMarks = 0;
                                        quizAttempts['csharpBeginnerQuiz'] =
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
                            csharpBeginnerMarks = 0;
                          });
                          Navigator.pushNamed(context, '/csharpBeginnerQuiz');
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
                        if (quizAttempts['csharpIntermediateQuiz'] == true) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'Quiz Already Attempted',
                                  style: TextStyle(fontSize: 18),
                                ),
                                content: Text(
                                  'You have already attempted this quiz.\n\nYour Score is $csharpIntermediateMarks',
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
                                        '/csharpIntermediateQuiz',
                                      );
                                      setState(() {
                                        csharpIntermediateMarks = 0;
                                        quizAttempts['csharpIntermediateQuiz'] =
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
                            csharpIntermediateMarks = 0;
                          });
                          Navigator.pushNamed(
                            context,
                            '/csharpIntermediateQuiz',
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
                        if (quizAttempts['csharpDifficultQuiz'] == true) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'Quiz Already Attempted',
                                  style: TextStyle(fontSize: 18),
                                ),
                                content: Text(
                                  'You have already attempted this quiz.\n\nYour Score is $csharpDifficultMarks',
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
                                        '/csharpDifficultQuiz',
                                      );
                                      setState(() {
                                        csharpDifficultMarks = 0;
                                        quizAttempts['csharpDifficultQuiz'] =
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
                            csharpDifficultMarks = 0;
                          });
                          Navigator.pushNamed(context, '/csharpDifficultQuiz');
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
