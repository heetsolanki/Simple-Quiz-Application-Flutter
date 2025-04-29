import 'package:simple_quiz_application/exports.dart';

class JavaScriptDifficultQuiz extends StatefulWidget {
  const JavaScriptDifficultQuiz({super.key});
  @override
  JavaScriptDifficultQuizState createState() => JavaScriptDifficultQuizState();
}

class JavaScriptDifficultQuizState extends State<JavaScriptDifficultQuiz> {
  bool _isSubmitted = false;
  List<int?> selectedAnswer = List.filled(10, null);
  List<Color> activeColor = List.filled(10, Colors.white);

  final List<Map<String, dynamic>> questions = [
    {
      'question': '1. What is the purpose of the async keyword in JavaScript?',
      'options': [
        'To define a synchronous function',
        'To mark a function as asynchronous, returning a Promise',
        'To execute a function immediately',
        'To create a generator function',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question': '2. What does the Promise.all() method do?',
      'options': [
        'Resolves a single Promise',
        'Takes an iterable of Promises and returns a Promise that resolves when all are resolved',
        'Rejects all Promises',
        'Executes Promises sequentially',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '3. What is the output of the following code: console.log(0.1 + 0.2 === 0.3);?',
      'options': ['true', 'false', 'undefined', 'Error'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '4. Which feature allows JavaScript modules to be imported dynamically?',
      'options': ['import()', 'require()', 'load()', 'module()'],
      'correctAnswer': 0, // a
    },
    {
      'question': '5. What is the purpose of the Symbol type in JavaScript?',
      'options': [
        'To create unique identifiers for object properties',
        'To define mathematical symbols',
        'To represent string literals',
        'To create immutable objects',
      ],
      'correctAnswer': 0, // a
    },
    {
      'question': '6. What does the Proxy object allow in JavaScript?',
      'options': [
        'Creating a copy of an object',
        'Defining custom behavior for fundamental operations on an object',
        'Locking an object’s properties',
        'Converting an object to a string',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '7. What is the output of the following code: let x = { a: 1 }; let y = { ...x, b: 2 }; console.log(y.b);?',
      'options': ['1', '2', 'undefined', 'Error'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '8. Which method is used to flatten a nested array in JavaScript?',
      'options': ['flat()', 'flatten()', 'reduce()', 'concat()'],
      'correctAnswer': 0, // a
    },
    {
      'question': '9. What is the purpose of the WeakMap in JavaScript?',
      'options': [
        'To store key-value pairs with weak references to keys',
        'To create a map with strong references',
        'To store only primitive values',
        'To prevent garbage collection',
      ],
      'correctAnswer': 0, // a
    },
    {
      'question':
          '10. What is the output of the following code: console.log(!!"false");?',
      'options': ['false', 'true', 'undefined', '"false"'],
      'correctAnswer': 1, // b
    },
  ];

  void submitQuiz() {
    setState(() {
      _isSubmitted = true;
      for (int i = 0; i < selectedAnswer.length; i++) {
        if (selectedAnswer[i] == questions[i]['correctAnswer']) {
          javascriptDifficultMarks++;
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
          'JavaScript Difficult Quiz',
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
                    javascriptDifficultMarks = 0;
                    quizAttempts['javascriptDifficultQuiz'] = false;
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
                    quizAttempts['javascriptDifficultQuiz'] = true;
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
              'Your score is: $javascriptDifficultMarks',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
