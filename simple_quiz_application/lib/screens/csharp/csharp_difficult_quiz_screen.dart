import 'package:simple_quiz_application/exports.dart';

class CSharpDifficultQuiz extends StatefulWidget {
  const CSharpDifficultQuiz({super.key});
  @override
  CSharpDifficultQuizState createState() => CSharpDifficultQuizState();
}

class CSharpDifficultQuizState extends State<CSharpDifficultQuiz> {
  bool _isSubmitted = false;
  List<int?> selectedAnswer = List.filled(10, null);
  List<Color> activeColor = List.filled(10, Colors.white);

  final List<Map<String, dynamic>> questions = [
    {
      'question': '1. What is the purpose of the volatile keyword in C#?',
      'options': [
        'To prevent method overriding',
        'To ensure thread-safe visibility of variables',
        'To mark a variable as immutable',
        'To allow garbage collection',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question': '2. Which of these is true about a record type in C# 9.0+?',
      'options': [
        'It is mutable by default',
        'It supports value-based equality by default',
        'It cannot have properties',
        'It is used only for asynchronous operations',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '3. What is the output of the following code: int? x = null; Console.WriteLine(x ?? 10);?',
      'options': ['null', '0', '10', 'Error'],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '4. Which attribute is used to mark a method as conditionally executed based on a preprocessor symbol?',
      'options': [
        'Obsolete',
        'Conditional',
        'DebuggerStepThrough',
        'CallerMemberName',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '5. What is the purpose of the async and await keywords in C#?',
      'options': [
        'To define synchronous methods',
        'To enable asynchronous programming',
        'To handle exceptions',
        'To create parallel threads',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '6. Which LINQ method is used to select distinct elements from a collection?',
      'options': ['Unique', 'Distinct', 'Select', 'Where'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '7. What happens when a Task is not awaited in an async method?',
      'options': [
        'The method throws an exception',
        'The Task runs synchronously',
        'The Task runs asynchronously and may not complete before the method returns',
        'The program terminates',
      ],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '8. Which C# feature allows pattern matching with switch expressions (C# 8.0+)?',
      'options': [
        'switch case',
        'pattern switch',
        'switch expression',
        'match expression',
      ],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '9. What is the output of the following code: var list = new List<int> { 1, 2 }; list.RemoveAt(0); Console.WriteLine(list.Count);?',
      'options': ['0', '1', '2', 'Error'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '10. Which keyword is used to define a property with a private backing field in C# 6.0+?',
      'options': ['getset', 'auto', 'property', '=>'],
      'correctAnswer': 3, // d
    },
  ];

  void submitQuiz() {
    setState(() {
      _isSubmitted = true;
      for (int i = 0; i < selectedAnswer.length; i++) {
        if (selectedAnswer[i] == questions[i]['correctAnswer']) {
          csharpDifficultMarks++;
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
          'C# Difficult Quiz',
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
                    csharpDifficultMarks = 0;
                    quizAttempts['csharpDifficultQuiz'] = false;
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
                    quizAttempts['csharpDifficultQuiz'] = true;
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
              'Your score is: $csharpDifficultMarks',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
