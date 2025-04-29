import 'package:simple_quiz_application/exports.dart';

Map<String, bool> quizAttempts = {
  'javaBeginnerQuiz': false,
  'javaIntermediateQuiz': false,
  'javaDifficultQuiz': false,
  'htmlBeginnerQuiz': false,
  'htmlIntermediateQuiz': false,
  'htmlDifficultQuiz': false,
  'javascriptBeginnerQuiz': false,
  'javascriptIntermediateQuiz': false,
  'javascriptDifficultQuiz': false,
  'csharpBeginnerQuiz': false,
  'csharpIntermediateQuiz': false,
  'csharpDifficultQuiz': false,
};
Color activeColor = const Color.fromRGBO(0, 112, 116, 1);

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  QuizState createState() => QuizState();
}

class QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // HTML Card
            Card(
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 100,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 175,
                      child: Row(
                        children: [
                          Image.asset('assets/images/HTML.webp', height: 75),
                          const Text(
                            'HTML Quiz',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/htmlQuiz');
                      },
                      child: const Text("Start Quiz"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            // Java Card
            Card(
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 100,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 175,
                      child: Row(
                        children: [
                          Image.asset('assets/images/Java.webp', height: 75),
                          const Text(
                            'Java Quiz',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/javaQuiz');
                      },
                      child: const Text("Start Quiz"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            // C# Card
            Card(
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 100,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 175,
                      child: Row(
                        children: [
                          Image.asset('assets/images/C-Sharp.webp', height: 75),
                          const Text(
                            'C# Quiz',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/csharpQuiz');
                      },
                      child: const Text("Start Quiz"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            // JavaScript Card
            Card(
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 100,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 175,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/JavaScript.webp',
                            height: 75,
                          ),
                          const Text(
                            'JavaScript\nQuiz',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/javascriptQuiz');
                      },
                      child: const Text("Start Quiz"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
