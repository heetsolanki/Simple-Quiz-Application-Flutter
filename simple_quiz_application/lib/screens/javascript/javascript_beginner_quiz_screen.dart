import 'package:simple_quiz_application/exports.dart';

class JavaScriptBeginnerQuiz extends StatefulWidget {
  const JavaScriptBeginnerQuiz({super.key});
  @override
  JavaScriptBeginnerQuizState createState() => JavaScriptBeginnerQuizState();
}

class JavaScriptBeginnerQuizState extends State<JavaScriptBeginnerQuiz> {
  bool _isSubmitted = false;
  List<int?> selectedAnswer = List.filled(10, null);
  List<Color> activeColor = List.filled(10, Colors.white);

  final List<Map<String, dynamic>> questions = [
    {
      'question':
          '1. What is the correct syntax to print "Hello, World!" to the console in JavaScript?',
      'options': [
        'console.log("Hello, World!");',
        'print("Hello, World!");',
        'System.out.println("Hello, World!");',
        'echo "Hello, World!";',
      ],
      'correctAnswer': 0, // a
    },
    {
      'question':
          '2. Which keyword is used to declare a variable in JavaScript?',
      'options': ['var', 'int', 'string', 'class'],
      'correctAnswer': 0, // a
    },
    {
      'question':
          '3. What is the default value of an uninitialized variable in JavaScript?',
      'options': ['null', '0', 'undefined', 'false'],
      'correctAnswer': 2, // c
    },
    {
      'question': '4. Which of these is a valid variable name in JavaScript?',
      'options': ['2variable', 'variable-name', 'my variable', 'myVariable'],
      'correctAnswer': 3, // d
    },
    {
      'question': '5. What does the alert() function do in JavaScript?',
      'options': [
        'Logs a message to the console',
        'Displays a dialog box with a message',
        'Redirects to a new page',
        'Changes the page’s title',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '6. Which data type is used to represent true/false values in JavaScript?',
      'options': ['string', 'number', 'boolean', 'object'],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '7. What symbol is used for single-line comments in JavaScript?',
      'options': ['#', '/* */', '//', '<!-- -->'],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '8. Which operator is used to compare two values for equality in JavaScript (including type)?',
      'options': ['=', '==', '===', '!='],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '9. What is the output of the following code: console.log(5 + "3");?',
      'options': ['8', '53', '15', 'Error'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '10. Which keyword is used to define a function in JavaScript?',
      'options': ['method', 'function', 'def', 'lambda'],
      'correctAnswer': 1, // b
    },
  ];

  void submitQuiz() {
    setState(() {
      _isSubmitted = true;
      for (int i = 0; i < selectedAnswer.length; i++) {
        if (selectedAnswer[i] == questions[i]['correctAnswer']) {
          javascriptBeginnerMarks++;
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
          'JavaScript Beginner Quiz',
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
                    javascriptBeginnerMarks = 0;
                    quizAttempts['javascriptBeginnerQuiz'] = false;
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
                    quizAttempts['javascriptBeginnerQuiz'] = true;
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
              'Your score is: $javascriptBeginnerMarks',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
