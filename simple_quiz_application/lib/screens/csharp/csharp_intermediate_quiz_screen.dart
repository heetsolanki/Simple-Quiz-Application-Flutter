import 'package:simple_quiz_application/exports.dart';

class CSharpIntermediateQuiz extends StatefulWidget {
  const CSharpIntermediateQuiz({super.key});
  @override
  CSharpIntermediateQuizState createState() => CSharpIntermediateQuizState();
}

class CSharpIntermediateQuizState extends State<CSharpIntermediateQuiz> {
  bool _isSubmitted = false;
  List<int?> selectedAnswer = List.filled(10, null);
  List<Color> activeColor = List.filled(10, Colors.white);

  final List<Map<String, dynamic>> questions = [
    {
      'question': '1. What is the purpose of the readonly keyword in C#?',
      'options': [
        'To make a variable immutable after initialization',
        'To mark a method as non-overridable',
        'To prevent a class from being inherited',
        'To restrict access to a property',
      ],
      'correctAnswer': 0, // a
    },
    {
      'question':
          '2. Which of these is a correct way to declare a List<int> in C#?',
      'options': [
        'List<int> numbers = new List<int>();',
        'int[] numbers = new List<int>();',
        'List numbers = new List<int>();',
        'int numbers = new List<int>();',
      ],
      'correctAnswer': 0, // a
    },
    {
      'question': '3. What does the this keyword refer to in a C# class?',
      'options': [
        'The parent class',
        'The current method',
        'The current object',
        'The static class',
      ],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '4. Which exception is thrown when accessing a null object reference in C#?',
      'options': [
        'NullPointerException',
        'NullReferenceException',
        'ArgumentNullException',
        'InvalidOperationException',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '5. What is the output of the following code: string s = "Hello"; s = s + " World"; Console.WriteLine(s);?',
      'options': ['Hello', 'World', 'Hello World', 'Error'],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '6. Which access modifier allows a member to be accessed only within the same assembly?',
      'options': ['public', 'private', 'protected', 'internal'],
      'correctAnswer': 3, // d
    },
    {
      'question': '7. What is the purpose of the base keyword in C#?',
      'options': [
        'To create a new instance of a class',
        'To call a base class constructor or method',
        'To define a static member',
        'To access private members',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '8. Which C# feature allows defining a method without an implementation in a class?',
      'options': ['virtual', 'abstract', 'static', 'override'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '9. What is the output of the following code: int x = 10; x *= 2; Console.WriteLine(x);?',
      'options': ['10', '12', '20', 'Error'],
      'correctAnswer': 2, // c
    },
    {
      'question': '10. Which keyword is used to implement an interface in C#?',
      'options': ['extends', 'implements', ':', 'inherits'],
      'correctAnswer': 2, // c
    },
  ];
  void submitQuiz() {
    setState(() {
      _isSubmitted = true;
      for (int i = 0; i < selectedAnswer.length; i++) {
        if (selectedAnswer[i] == questions[i]['correctAnswer']) {
          csharpIntermediateMarks++;
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
          'C# Intermediate Quiz',
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
                    csharpIntermediateMarks = 0;
                    quizAttempts['csharpIntermediateQuiz'] = false;
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
                    quizAttempts['csharpIntermediateQuiz'] = true;
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
              'Your score is: $csharpIntermediateMarks',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
