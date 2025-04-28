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
      'question':
          '1. Which CSharp element is used to define a navigation section?',
      'options': ['<nav>', '<menu>', '<header>', '<section>'],
      'correctAnswer': 0, // a
    },
    {
      'question': '2. What does the <form> tag’s method attribute specify?',
      'options': [
        'The type of input fields',
        'The HTTP method for sending form data',
        'The validation rules',
        'The styling of the form',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '3. Which attribute makes an input field mandatory in a form?',
      'options': ['mandatory', 'required', 'validate', 'essential'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '4. Which CSharp5 element is used to group related form elements?',
      'options': ['<group>', '<fieldset>', '<formgroup>', '<section>'],
      'correctAnswer': 1, // b
    },
    {
      'question': '5. What is the purpose of the <meta charset="UTF-8"> tag?',
      'options': [
        'To set the webpage’s language',
        'To specify the character encoding for the document',
        'To define the page’s title',
        'To link to an external font',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question': '6. Which tag is used to create a dropdown menu in a form?',
      'options': ['<dropdown>', '<select>', '<menu>', '<option>'],
      'correctAnswer': 1, // b
    },
    {
      'question': '7. What does the rel attribute in a <link> tag specify?',
      'options': [
        'The relationship between the current document and the linked resource',
        'The URL of the linked resource',
        'The type of the linked file',
        'The media query for the link',
      ],
      'correctAnswer': 0, // a
    },
    {
      'question':
          '8. Which CSharp5 element is used to define a footer for a document or section?',
      'options': ['<bottom>', '<footer>', '<end>', '<base>'],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '9. What is the purpose of the alt attribute in an <img> tag?',
      'options': [
        'To specify the image’s alignment',
        'To provide alternative text for accessibility',
        'To set the image’s source URL',
        'To define the image’s size',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question': '10. Which attribute is used to open a link in a new tab?',
      'options': ['new', 'target="_blank"', 'open', 'href'],
      'correctAnswer': 1, // b
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
          'CSharp Intermediate Quiz',
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
