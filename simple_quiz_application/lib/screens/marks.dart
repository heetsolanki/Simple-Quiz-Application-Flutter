import 'package:simple_quiz_application/exports.dart';

class Marks extends StatefulWidget {
  const Marks({super.key});

  @override
  MarksState createState() => MarksState();
}

class MarksState extends State<Marks> {
  void _refreshMarks() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmoothListView(
        duration: Duration(milliseconds: 500),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'Marks',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              // HTML Marks
              SizedBox(
                width: 350,
                child: ExpansionTile(
                  expansionAnimationStyle: AnimationStyle(
                    duration: Duration(milliseconds: 350),
                  ),
                  childrenPadding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  expandedAlignment: Alignment.centerLeft,
                  title: Text(
                    'HTML',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  children: [
                    // HTML Beginner Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Beginner Marks: '
                          '${quizAttempts['htmlBeginnerQuiz'] == true ? '$htmlBeginnerMarks/10' : 'NA'}',
                          style: TextStyle(fontSize: 17),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 13,
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              htmlBeginnerMarks = 0;
                              quizAttempts['htmlBeginnerQuiz'] = false;
                            });
                            await Navigator.pushNamed(
                              context,
                              '/htmlBeginnerQuiz',
                            );
                            _refreshMarks();
                          },
                          child: Text(
                            quizAttempts['htmlBeginnerQuiz'] == true
                                ? 'Reattempt'
                                : 'Attempt',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    // HTML Intermediate Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Intermediate Marks: '
                          '${quizAttempts['htmlIntermediateQuiz'] == true ? '$htmlIntermediateMarks/10' : 'NA'}',
                          style: TextStyle(fontSize: 17),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 13,
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              htmlIntermediateMarks = 0;
                              quizAttempts['htmlIntermediateQuiz'] = false;
                            });
                            await Navigator.pushNamed(
                              context,
                              '/htmlIntermediateQuiz',
                            );
                            _refreshMarks();
                          },
                          child: Text(
                            quizAttempts['htmlIntermediateQuiz'] == true
                                ? 'Reattempt'
                                : 'Attempt',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    // HTML Difficult Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Difficult Marks: '
                          '${quizAttempts['htmlDifficultQuiz'] == true ? '$htmlDifficultMarks/10' : 'NA'}',
                          style: TextStyle(fontSize: 17),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 13,
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              htmlDifficultMarks = 0;
                              quizAttempts['htmlDifficultQuiz'] = false;
                            });
                            await Navigator.pushNamed(
                              context,
                              '/htmlDifficultQuiz',
                            );
                            _refreshMarks();
                          },
                          child: Text(
                            quizAttempts['htmlDifficultQuiz'] == true
                                ? 'Reattempt'
                                : 'Attempt',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              // Java Marks
              SizedBox(
                width: 350,
                child: ExpansionTile(
                  expansionAnimationStyle: AnimationStyle(
                    duration: Duration(milliseconds: 350),
                  ),
                  childrenPadding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  expandedAlignment: Alignment.centerLeft,
                  title: Text(
                    'Java',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  children: [
                    // Java Beginner Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Beginner Marks: '
                          '${quizAttempts['javaBeginnerQuiz'] == true ? '$javaBeginnerMarks/10' : 'NA'}',
                          style: TextStyle(fontSize: 17),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 13,
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              javaBeginnerMarks = 0;
                              quizAttempts['javaBeginnerQuiz'] = false;
                            });
                            await Navigator.pushNamed(
                              context,
                              '/javaBeginnerQuiz',
                            );
                            _refreshMarks();
                          },
                          child: Text(
                            quizAttempts['javaBeginnerQuiz'] == true
                                ? 'Reattempt'
                                : 'Attempt',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    // Java Intermediate Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Intermediate Marks: '
                          '${quizAttempts['javaIntermediateQuiz'] == true ? '$javaIntermediateMarks/10' : 'NA'}',
                          style: TextStyle(fontSize: 17),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 13,
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              javaIntermediateMarks = 0;
                              quizAttempts['javaIntermediateQuiz'] = false;
                            });
                            await Navigator.pushNamed(
                              context,
                              '/javaIntermediateQuiz',
                            );
                            _refreshMarks();
                          },
                          child: Text(
                            quizAttempts['javaDifficultQuiz'] == true
                                ? 'Reattempt'
                                : 'Attempt',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    // Java Difficult Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Difficult Marks: '
                          '${quizAttempts['javaDifficultQuiz'] == true ? '$javaDifficultMarks/10' : 'NA'}',
                          style: TextStyle(fontSize: 17),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 13,
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              javaDifficultMarks = 0;
                              quizAttempts['javaDifficultQuiz'] = false;
                            });
                            await Navigator.pushNamed(
                              context,
                              '/javaDifficultQuiz',
                            );
                            _refreshMarks();
                          },
                          child: Text(
                            quizAttempts['javaIntermediateQuiz'] == true
                                ? 'Reattempt'
                                : 'Attempt',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              // C# Marks
              SizedBox(
                width: 350,
                child: ExpansionTile(
                  expansionAnimationStyle: AnimationStyle(
                    duration: Duration(milliseconds: 350),
                  ),
                  childrenPadding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  expandedAlignment: Alignment.centerLeft,
                  title: Text(
                    'C#',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  children: [
                    // C# Beginner Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Beginner Marks: '
                          '${quizAttempts['csharpBeginnerQuiz'] == true ? '$csharpBeginnerMarks/10' : 'NA'}',
                          style: TextStyle(fontSize: 17),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 13,
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              csharpBeginnerMarks = 0;
                              quizAttempts['csharpBeginnerQuiz'] = false;
                            });
                            await Navigator.pushNamed(
                              context,
                              '/csharpBeginnerQuiz',
                            );
                            _refreshMarks();
                          },
                          child: Text(
                            quizAttempts['csharpBeginnerQuiz'] == true
                                ? 'Reattempt'
                                : 'Attempt',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    // C# Intermediate Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Intermediate Marks: '
                          '${quizAttempts['csharpIntermediateQuiz'] == true ? '$csharpIntermediateMarks/10' : 'NA'}',
                          style: TextStyle(fontSize: 17),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 13,
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              csharpIntermediateMarks = 0;
                              quizAttempts['csharpIntermediateQuiz'] = false;
                            });
                            await Navigator.pushNamed(
                              context,
                              '/csharpIntermediateQuiz',
                            );
                            _refreshMarks();
                          },
                          child: Text(
                            quizAttempts['csharpIntermediateQuiz'] == true
                                ? 'Reattempt'
                                : 'Attempt',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    // C# Difficult Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Difficult Marks: '
                          '${quizAttempts['csharpDifficultQuiz'] == true ? '$csharpDifficultMarks/10' : 'NA'}',
                          style: TextStyle(fontSize: 17),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 13,
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              csharpDifficultMarks = 0;
                              quizAttempts['csharpDifficultQuiz'] = false;
                            });
                            await Navigator.pushNamed(
                              context,
                              '/csharpDifficultQuiz',
                            );
                            _refreshMarks();
                          },
                          child: Text(
                            quizAttempts['csharpDifficultQuiz'] == true
                                ? 'Reattempt'
                                : 'Attempt',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              // JavaScript Marks
              SizedBox(
                width: 350,
                child: ExpansionTile(
                  expansionAnimationStyle: AnimationStyle(
                    duration: Duration(milliseconds: 350),
                  ),
                  childrenPadding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  expandedAlignment: Alignment.centerLeft,
                  title: Text(
                    'JavaScript',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  children: [
                    // JavaScript Beginner Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Beginner Marks: '
                          '${quizAttempts['javascriptBeginnerQuiz'] == true ? '$javascriptBeginnerMarks/10' : 'NA'}',
                          style: TextStyle(fontSize: 17),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 13,
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              javascriptBeginnerMarks = 0;
                              quizAttempts['javascriptBeginnerQuiz'] = false;
                            });
                            await Navigator.pushNamed(
                              context,
                              '/javascriptBeginnerQuiz',
                            );
                            _refreshMarks();
                          },
                          child: Text(
                            quizAttempts['javascriptBeginnerQuiz'] == true
                                ? 'Reattempt'
                                : 'Attempt',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    // JavaScript Intermediate Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Intermediate Marks: '
                          '${quizAttempts['javascriptIntermediateQuiz'] == true ? '$javascriptIntermediateMarks/10' : 'NA'}',
                          style: TextStyle(fontSize: 17),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 13,
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              javascriptIntermediateMarks = 0;
                              quizAttempts['javascriptIntermediateQuiz'] =
                                  false;
                            });
                            await Navigator.pushNamed(
                              context,
                              '/javascriptIntermediateQuiz',
                            );
                            _refreshMarks();
                          },
                          child: Text(
                            quizAttempts['javascriptIntermediateQuiz'] == true
                                ? 'Reattempt'
                                : 'Attempt',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    // JavaScript Difficult Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Difficult Marks: '
                          '${quizAttempts['javascriptDifficultQuiz'] == true ? '$javascriptDifficultMarks/10' : 'NA'}',
                          style: TextStyle(fontSize: 17),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 13,
                            ),
                          ),
                          onPressed: () async {
                            setState(() {
                              javascriptDifficultMarks = 0;
                              quizAttempts['javascriptDifficultQuiz'] = false;
                            });
                            await Navigator.pushNamed(
                              context,
                              '/javascriptDifficultQuiz',
                            );
                            _refreshMarks();
                          },
                          child: Text(
                            quizAttempts['javaDifficultQuiz'] == true
                                ? 'Reattempt'
                                : 'Attempt',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ],
      ),
    );
  }
}
