import 'package:simple_quiz_application/exports.dart';

class CSharpBeginnerQuiz extends StatefulWidget {
  const CSharpBeginnerQuiz({super.key});
  @override
  CSharpBeginnerQuizState createState() => CSharpBeginnerQuizState();
}

class CSharpBeginnerQuizState extends State<CSharpBeginnerQuiz> {
  bool _isSubmitted = false;
  List<int?> selectedAnswer = List.filled(10, null);
  List<Color> activeColor = List.filled(10, Colors.white);

  final List<Map<String, dynamic>> questions = [
    {
      'question':
          '1. What is the correct syntax to print "Hello, World!" to the console in C#?',
      'options': [
        'Console.WriteLine("Hello, World!");',
        'print("Hello, World!");',
        'System.out.println("Hello, World!");',
        'echo "Hello, World!";',
      ],
      'correctAnswer': 0, // a
    },
    {
      'question': '2. Which keyword is used to define a class in C#?',
      'options': ['struct', 'class', 'type', 'object'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '3. What is the default value of an uninitialized int variable in C#?',
      'options': ['null', '-1', '0', 'undefined'],
      'correctAnswer': 2, // c
    },
    {
      'question': '4. Which of these is a valid variable name in C#?',
      'options': ['2variable', 'variable-name', 'my_variable', '@variable'],
      'correctAnswer': 2, // c
    },
    {
      'question': '5. What is the purpose of the Main method in a C# program?',
      'options': [
        'To initialize variables',
        'To define a class constructor',
        'To serve as the entry point for the program',
        'To handle exceptions',
      ],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '6. Which data type is used to store a single character in C#?',
      'options': ['string', 'char', 'int', 'bool'],
      'correctAnswer': 1, // b
    },
    {
      'question': '7. What symbol is used for single-line comments in C#?',
      'options': ['#', '/* */', '//', '<!-- -->'],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '8. Which operator is used to compare two values for equality in C#?',
      'options': ['=', '==', '===', '!='],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '9. What is the output of the following code: Console.WriteLine(5 + 3);?',
      'options': ['53', '5 + 3', '8', 'Error'],
      'correctAnswer': 2, // c
    },
    {
      'question': '10. Which keyword is used to create an object in C#?',
      'options': ['create', 'instance', 'object', 'new'],
      'correctAnswer': 3, // d
    },
  ];

  void submitQuiz() {
    setState(() {
      _isSubmitted = true;
      for (int i = 0; i < selectedAnswer.length; i++) {
        if (selectedAnswer[i] == questions[i]['correctAnswer']) {
          csharpBeginnerMarks++;
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
          'C# Beginner Quiz',
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
                    csharpBeginnerMarks = 0;
                    quizAttempts['csharpBeginnerQuiz'] = false;
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
                    quizAttempts['csharpBeginnerQuiz'] = true;
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
              'Your score is: $csharpBeginnerMarks',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
