import 'package:simple_quiz_application/exports.dart';

class JavaDifficultQuiz extends StatefulWidget {
  const JavaDifficultQuiz({super.key});
  @override
  JavaDifficultQuizState createState() => JavaDifficultQuizState();
}

class JavaDifficultQuizState extends State<JavaDifficultQuiz> {
  bool _isSubmitted = false;
  List<int?> selectedAnswer = List.filled(10, null);
  List<Color> activeColor = List.filled(10, Colors.white);

  final List<Map<String, dynamic>> questions = [
    {
      'question': '1. What is the purpose of the volatile keyword in Java?',
      'options': [
        'To make a variable immutable',
        'To ensure thread-safe visibility of variables',
        'To mark a method as synchronized',
        'To allow garbage collection',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question': '2. Which of these is true about a static nested class?',
      'options': [
        'It requires an instance of the enclosing class to be instantiated',
        'It cannot access non-static members of the enclosing class',
        'It is defined inside a method',
        'It is always public',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '3. What is the output of the following code: Integer x = 10; Integer y = 10; System.out.println(x == y);?',
      'options': ['false', 'true', 'Error', 'null'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '4. Which interface must a class implement to be used in a for-each loop?',
      'options': ['Serializable', 'Comparable', 'Iterable', 'Iterator'],
      'correctAnswer': 2, // c
    },
    {
      'question': '5. What is the purpose of the @Override annotation in Java?',
      'options': [
        'To mark a method as static',
        'To indicate that a method overrides a superclass method',
        'To prevent method overriding',
        'To allow multiple inheritance',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question': '6. Which of these is a functional interface in Java?',
      'options': ['List', 'Runnable', 'Map', 'Set'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '7. What happens when a try block does not have a catch block but has a finally block?',
      'options': [
        'The program will not compile',
        'The finally block executes, and any uncaught exception propagates',
        'The finally block is ignored',
        'The program terminates immediately',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question': '8. Which method is used to start a new thread in Java?',
      'options': ['run()', 'execute()', 'start()', 'begin()'],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '9. What is the output of the following code: List<Integer> list = new ArrayList<>(); list.add(1); list.add(2); list.remove(1); System.out.println(list);?',
      'options': ['[1, 2]', '[2]', '[1]', 'Error'],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '10. Which of these is true about the default method in an interface (Java 8+)?',
      'options': [
        'It must be implemented by all classes implementing the interface',
        'It cannot be overridden by implementing classes',
        'It provides a default implementation that can be overridden',
        'It is always static',
      ],
      'correctAnswer': 2, // c
    },
  ];

  void submitQuiz() {
    setState(() {
      _isSubmitted = true;
      for (int i = 0; i < selectedAnswer.length; i++) {
        if (selectedAnswer[i] == questions[i]['correctAnswer']) {
          javaDifficultMarks++;
          activeColor[i] = Colors.green;
        } else {
          activeColor[i] = Colors.red;
        }
      }
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
      body: Column(
        children: [
          Expanded(
            child: SmoothListView.builder(
              duration: Duration(seconds: 2),
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return QuestionCard(
                  questionData: questions[index],
                  index: index,
                  selectedAnswer: selectedAnswer[index],
                  activeColor: activeColor[index],
                  isSubmitted: _isSubmitted,
                  onAnswerSelected: (value) {
                    setState(() {
                      selectedAnswer[index] = value;
                    });
                  },
                );
              },
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
                    javaDifficultMarks = 0;
                    quizAttempts['javaDifficultQuiz'] = false;
                    for (int i = 0; i < 10; i++) {
                      selectedAnswer[i] = null;
                      activeColor[i] = Colors.white;
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
                child: Text('Reset', style: TextStyle(fontSize: 17)),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    quizAttempts['javaDifficultQuiz'] = true;
                    _isSubmitted = true;
                    submitQuiz();
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
                child: Text('Submit', style: TextStyle(fontSize: 17)),
              ),
            ],
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Your score is: $javaDifficultMarks',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
