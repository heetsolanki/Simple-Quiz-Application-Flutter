import 'package:simple_quiz_application/exports.dart';

class QuestionCard extends StatelessWidget {
  final Map<String, dynamic> questionData;
  final int index;
  final int? selectedAnswer;
  final Color activeColor;
  final bool isSubmitted;
  final ValueChanged<int?> onAnswerSelected;

  const QuestionCard({
    super.key,
    required this.questionData,
    required this.index,
    required this.selectedAnswer,
    required this.activeColor,
    required this.isSubmitted,
    required this.onAnswerSelected,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 10, right: 10),
              child: Text(
                questionData['question'],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ...List.generate(4, (optionIndex) {
              return RadioListTile<int?>(
                hoverColor: Color.fromRGBO(0, 112, 116, 0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                selectedTileColor: activeColor,
                selected: selectedAnswer == optionIndex,
                activeColor: Color.fromRGBO(0, 112, 116, 1),
                title: Text(
                  questionData['options'][optionIndex],
                  style: const TextStyle(fontSize: 15),
                ),
                value: optionIndex,
                groupValue: selectedAnswer,
                onChanged:
                    isSubmitted
                        ? null
                        : (value) {
                          onAnswerSelected(value);
                        },
              );
            }),
          ],
        ),
      ),
    );
  }
}
