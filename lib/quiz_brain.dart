import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Questions> _questionsBank = [
    Questions(q: 'Some cats are actually allergic to humans', a: true),
    Questions(
        q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Questions(
        q: 'Approximately one quarter of human bones are in the feet.', a: true),
    Questions(q: 'A slug\'s blood is green.', a: true),
    Questions(
        q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a: true),
    Questions(
        q: 'It is illegal to pee in the Ocean in Portugal.', a: true),
    Questions(
        q: 'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    Questions(
        q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        a: true),
    Questions(
        q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    Questions(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    Questions(q: 'Google was originally called \"Backrub\".', a: true),
    Questions(
        q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true),
    Questions(
        q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionsBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionsBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionsBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    return _questionNumber >= _questionsBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
