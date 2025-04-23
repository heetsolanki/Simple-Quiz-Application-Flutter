import 'package:simple_quiz_application/exports.dart';

class HtmlBeginnerQuiz extends StatefulWidget {
  const HtmlBeginnerQuiz({super.key});
  @override
  HtmlBeginnerQuizState createState() => HtmlBeginnerQuizState();
}

class HtmlBeginnerQuizState extends State<HtmlBeginnerQuiz> {
  bool _isSubmitted = false;
  List<int?> selectedAnswer = List.filled(10, null);
  List<Color> activeColor = List.filled(10, Colors.white);

  final List<Map<String, dynamic>> questions = [
    {
      'question': '1. What does HTML stand for?',
      'options': [
        'Home Tool Markup Language',
        'Hyper Text Markup Language',
        'Hyper Tabular Markup Language',
        'High Text Markup Language',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question': '2. Which tag is used to create a paragraph in HTML?',
      'options': ['<text>', '<paragraph>', '<p>', '<para>'],
      'correctAnswer': 2, // c
    },
    {
      'question': '3. Which tag is used to create a line break?',
      'options': ['<newline>', '<br>', '<break>', '<lb>'],
      'correctAnswer': 1, // b
    },
    {
      'question': '4. What is the correct HTML tag for the largest heading?',
      'options': ['<heading>', '<h6>', '<head>', '<h1>'],
      'correctAnswer': 3, // d
    },
    {
      'question':
          '5. Which attribute is used to specify the source of an image in an <img> tag?',
      'options': ['alt', 'link', 'src', 'href'],
      'correctAnswer': 2, // c
    },
    {
      'question': '6. Which HTML tag is used to create an unordered list?',
      'options': ['<list>', '<li>', '<ul>', '<ol>'],
      'correctAnswer': 2, // c
    },
    {
      'question': '7. What is the purpose of the <title> tag in HTML?',
      'options': [
        'To create a heading on the page',
        'To set the title of the webpage displayed in the browser tab',
        'To link to an external stylesheet',
        'To define the main content of the page',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '8. Which HTML tag is used to emphasize text, typically displaying it in italics?',
      'options': ['<b>', '<i>', '<em>', '<strong>'],
      'correctAnswer': 2, // c
    },
    {
      'question': '9. Which tag is used to create a table in HTML?',
      'options': ['<tbl>', '<grid>', '<table>', '<tab>'],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '10. What is the correct HTML tag to include an external stylesheet?',
      'options': ['<script>', '<css>', '<link>', '<style>'],
      'correctAnswer': 2, // c
    },
  ];

  void submitQuiz() {
    setState(() {
      _isSubmitted = true;
      for (int i = 0; i < selectedAnswer.length; i++) {
        if (selectedAnswer[i] == questions[i]['correctAnswer']) {
          htmlBeginnerMarks++;
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
          'HTML Quiz',
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
                    htmlBeginnerMarks = 0;
                    quizAttempts['htmlBeginnerQuiz'] = false;
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
                    quizAttempts['htmlBeginnerQuiz'] = true;
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
              'Your score is: $htmlBeginnerMarks',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
