import 'package:simple_quiz_application/exports.dart';

class HtmlDifficultQuiz extends StatefulWidget {
  const HtmlDifficultQuiz({super.key});
  @override
  HtmlDifficultQuizState createState() => HtmlDifficultQuizState();
}

class HtmlDifficultQuizState extends State<HtmlDifficultQuiz> {
  bool _isSubmitted = false;
  List<int?> selectedAnswer = List.filled(10, null);
  List<Color> activeColor = List.filled(10, Colors.white);

  final List<Map<String, dynamic>> questions = [
    {
      'question': '1. Which HTML5 element is used to embed audio files?',
      'options': ['<track>', '<media>', '<audio>', '<sound>'],
      'correctAnswer': 2, // c
    },
    {
      'question': '2. What is the purpose of the data-* attribute in HTML5?',
      'options': [
        'To validate form data',
        'To link to external data sources',
        'To store custom data private to the page or application',
        'To define the data type of an element',
      ],
      'correctAnswer': 2, // c
    },
    {
      'question':
          '3. Which ARIA attribute improves accessibility for screen readers by describing an element’s purpose?',
      'options': [
        'aria-label',
        'aria-hidden',
        'aria-disabled',
        'aria-required',
      ],
      'correctAnswer': 0, // a
    },
    {
      'question': '4. What does the <picture> element allow in HTML5?',
      'options': [
        'Embedding multiple images in a gallery',
        'Providing multiple image sources for different devices',
        'Creating animated images',
        'Adding captions to images',
      ],
      'correctAnswer': 1, // b
    },
    {
      'question':
          '5. Which attribute specifies the keyboard shortcut for an element?',
      'options': ['shortcut', 'accesskey', 'key', 'hotkey'],
      'correctAnswer': 1, // b
    },
    {
      'question': '6. What is the role of the <template> tag in HTML5?',
      'options': [
        'To define reusable HTML content that can be cloned',
        'To create a layout for the entire page',
        'To store CSS styles',
        'To embed external templates',
      ],
      'correctAnswer': 0, // a
    },
    {
      'question':
          '7. Which HTML5 attribute is used to defer script execution until the page is fully loaded?',
      'options': ['async', 'defer', 'load', 'wait'],
      'correctAnswer': 1, // b
    },
    {
      'question': '8. What does the itemprop attribute in microdata do?',
      'options': [
        'Defines the property of an item for structured data',
        'Specifies the item’s CSS class',
        'Links to an external item',
        'Sets the item’s visibility',
      ],
      'correctAnswer': 0, // a
    },
    {
      'question':
          '9. Which HTML5 element is used to define a scalar measurement, like a gauge or meter?',
      'options': ['<meter>', '<progress>', '<range>', '<value>'],
      'correctAnswer': 0, // a
    },
    {
      'question': '10. What is the purpose of the contenteditable attribute?',
      'options': [
        'To allow users to edit the content of an element',
        'To specify the content’s language',
        'To make an element draggable',
        'To define the content’s alignment',
      ],
      'correctAnswer': 0, // a
    },
  ];

  void submitQuiz() {
    setState(() {
      _isSubmitted = true;
      for (int i = 0; i < selectedAnswer.length; i++) {
        if (selectedAnswer[i] == questions[i]['correctAnswer']) {
          htmlDifficultMarks++;
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
          'Html Difficult Quiz',
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
                    htmlDifficultMarks = 0;
                    quizAttempts['htmlDifficultQuiz'] = false;
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
                    quizAttempts['htmlDifficultQuiz'] = true;
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
              'Your score is: $htmlDifficultMarks',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
