import 'package:simple_quiz_application/exports.dart';

class JavaScriptIntermediateQuiz extends StatefulWidget {
  const JavaScriptIntermediateQuiz({super.key});
  @override
  JavaScriptIntermediateQuizState createState() =>
      JavaScriptIntermediateQuizState();
}

class JavaScriptIntermediateQuizState
    extends State<JavaScriptIntermediateQuiz> {
  bool _isSubmitted = false;
  List<int?> selectedAnswer = List.filled(10, null);
  List<Color> activeColor = List.filled(10, Colors.white);

  final List<Map<String, dynamic>> questions = [
    {
      'question': '1. What is the purpose of the let keyword in JavaScript?',
      'options': [
        'To declare a block-scoped variable',
        'To define a constant',
        'To declare a global variable',
        'To create a function',
      ],
      'correctAnswer': 0, // a
    },
    {
      'question':
          '2. Which method is used to add an element to the end of an array in JavaScript?',
      'options': ['push()', 'pop()', 'shift()', 'unshift()'],
      'correctAnswer': 0, // a
    },
    {
      'question':
          '3. What does the this keyword refer to in a JavaScript function?',
      'options': [
        'The global object',
        'The function itself',
        'The object the function is a method of',
        'The parent function',
      ],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '4. Which error is thrown when trying to access a property of undefined?',
      'options': [
        'ReferenceError',
        'TypeError',
        'SyntaxError',
        'NullPointerException',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '5. What is the output of the following code: let x = [1, 2]; x[2] = 3; console.log(x.length);?',
      'options': ['2', '3', '4', 'Error'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '6. Which method is used to iterate over an array and create a new array based on the results?',
      'options': ['forEach()', 'map()', 'filter()', 'reduce()'],
      'correctAnswer': 1, // b
    },
    {
      'question': '7. What does the bind() method do in JavaScript?',
      'options': [
        'Executes a function immediately',
        'Creates a new function with a specified this value',
        'Combines two functions',
        'Removes a function from an object',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question': '8. What is the purpose of the closure in JavaScript?',
      'options': [
        'To prevent variable declaration',
        'To allow a function to access variables from an outer scope',
        'To lock a function’s execution',
        'To create a new object',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '9. What is the output of the following code: console.log(typeof null);?',
      'options': ['null', 'object', 'undefined', 'string'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '10. Which keyword is used to define a class in JavaScript (ES6+)?',
      'options': ['struct', 'class', 'type', 'object'],
      'correctAnswer': 1, // b
    },
  ];
  void submitQuiz() {
    setState(() {
      _isSubmitted = true;
      for (int i = 0; i < selectedAnswer.length; i++) {
        if (selectedAnswer[i] == questions[i]['correctAnswer']) {
          javascriptIntermediateMarks++;
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
          'JavaScript Intermediate Quiz',
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
                    javascriptIntermediateMarks = 0;
                    quizAttempts['javascriptIntermediateQuiz'] = false;
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
                    quizAttempts['javascriptIntermediateQuiz'] = true;
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
              'Your score is: $javascriptIntermediateMarks',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
