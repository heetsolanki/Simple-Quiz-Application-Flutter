import 'package:simple_quiz_application/exports.dart';

class JavaBeginnerQuiz extends StatefulWidget {
  const JavaBeginnerQuiz({super.key});
  @override
  JavaBeginnerQuizState createState() => JavaBeginnerQuizState();
}

class JavaBeginnerQuizState extends State<JavaBeginnerQuiz> {
  bool _isSubmitted = false;
  List<int?> selectedAnswer = List.filled(10, null);
  List<Color> activeColor = List.filled(10, Colors.white);

  final List<Map<String, dynamic>> questions = [
    {
      'question':
          '1. What is the correct syntax to print "Hello, World!" to the console in Java?',
      'options': [
        'print("Hello, World!");',
        'Console.write("Hello, World!");',
        'System.out.println("Hello, World!");',
        'echo "Hello, World!";',
      ],
      'correctAnswer': 2, // c
    },
    {
      'question': '2. Which keyword is used to define a class in Java?',
      'options': ['struct', 'class', 'type', 'object'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '3. What is the default value of an uninitialized int variable in Java?',
      'options': ['null', '-1', '0', 'undefined'],
      'correctAnswer': 2, // c
    },
    {
      'question': '4. Which of these is a valid variable name in Java?',
      'options': ['2variable', 'variable-name', 'my variable', 'my_variable'],
      'correctAnswer': 3, // d
    },
    {
      'question':
          '5. What is the purpose of the public static void main(String[] args) method?',
      'options': [
        'To initialize variables',
        'To define a class constructor',
        'To serve as the entry point for a Java program',
        'To handle exceptions',
      ],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '6. Which data type is used to store a single character in Java?',
      'options': ['String', 'char', 'int', 'boolean'],
      'correctAnswer': 1, // b
    },
    {
      'question': '7. What symbol is used for single-line comments in Java?',
      'options': ['#', '/* */', '<!-- -->', '//'],
      'correctAnswer': 3, // d
    },
    {
      'question':
          '8. Which operator is used to compare two values for equality in Java?',
      'options': ['=', '==', '===', '!='],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '9. What is the output of the following code: System.out.println(5 + 3);?',
      'options': ['53', '5 + 3', '8', 'Error'],
      'correctAnswer': 2, // c
    },
    {
      'question': '10. Which keyword is used to create an object in Java?',
      'options': ['create', 'instance', 'object', 'new'],
      'correctAnswer': 3, // d
    },
  ];

  void submitQuiz() {
    setState(() {
      _isSubmitted = true;
      for (int i = 0; i < selectedAnswer.length; i++) {
        if (selectedAnswer[i] == questions[i]['correctAnswer']) {
          javaBeginnerMarks++;
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
          'Java Beginner Quiz',
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
                    javaBeginnerMarks = 0;
                    quizAttempts['javaBeginnerQuiz'] = false;
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
                    quizAttempts['javaBeginnerQuiz'] = true;
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
              'Your score is: $javaBeginnerMarks',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
