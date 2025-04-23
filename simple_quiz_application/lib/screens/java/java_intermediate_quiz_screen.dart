import 'package:simple_quiz_application/exports.dart';

class JavaIntermediateQuiz extends StatefulWidget {
  const JavaIntermediateQuiz({super.key});
  @override
  JavaIntermediateQuizState createState() => JavaIntermediateQuizState();
}

class JavaIntermediateQuizState extends State<JavaIntermediateQuiz> {
  bool _isSubmitted = false;
  List<int?> selectedAnswer = List.filled(10, null);
  List<Color> activeColor = List.filled(10, Colors.white);

  final List<Map<String, dynamic>> questions = [
    {
      'question': '1. What is the purpose of the final keyword in Java?',
      'options': [
        'To end a program',
        'To define a loop',
        'To declare a variable that cannot be changed',
        'To mark a method as private',
      ],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '2. Which of these is a correct way to create an array in Java?',
      'options': [
        'int[] arr = new int[5];',
        'int arr[] = new int[];',
        'int arr = new int[5];',
        'array int arr[5];',
      ],
      'correctAnswer': 0, // a
    },
    {
      'question': '3. What does the this keyword refer to in Java?',
      'options': [
        'The current class',
        'The current method',
        'The parent class',
        'The current object',
      ],
      'correctAnswer': 3, // d
    },
    {
      'question':
          '4. Which exception is thrown when trying to access an array index that does not exist?',
      'options': [
        'NullPointerException',
        'ArrayIndexOutOfBoundsException',
        'ClassCastException',
        'IllegalArgumentException',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '5. What is the output of the following code: String s = "Hello"; s.concat(" World"); System.out.println(s);?',
      'options': ['Hello World', 'Hello', 'World', 'Error'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '6. Which access modifier allows a method to be accessed only within the same class?',
      'options': ['public', 'protected', 'private', 'default'],
      'correctAnswer': 2, // c
    },
    {
      'question': '7. What is the purpose of the super keyword in Java?',
      'options': [
        'To refer to the current object',
        'To call a superclass’s constructor or method',
        'To declare a static method',
        'To create a new object',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question': '8. Which loop is guaranteed to execute at least once?',
      'options': ['for', 'while', 'do-while', 'foreach'],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '9. What is the output of the following code: int x = 10; x += 5; System.out.println(x);?',
      'options': ['10', '5', '15', '50'],
      'correctAnswer': 2, // c
    },
    {
      'question': '10. Which keyword is used to inherit a class in Java?',
      'options': ['implements', 'extends', 'inherits', 'super'],
      'correctAnswer': 1, // b
    },
  ];
  void submitQuiz() {
    setState(() {
      _isSubmitted = true;
      for (int i = 0; i < selectedAnswer.length; i++) {
        if (selectedAnswer[i] == questions[i]['correctAnswer']) {
          javaIntermediateMarks++;
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
          'Java Quiz',
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
                    javaIntermediateMarks = 0;
                    quizAttempts['javaIntermediateQuiz'] = false;
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
                child: Text('Reset', style: TextStyle(fontSize: 20)),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    quizAttempts['javaIntermediateQuiz'] = true;
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
                child: Text('Submit', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
          SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back', style: TextStyle(fontSize: 20)),
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Your score is: $javaIntermediateMarks',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
