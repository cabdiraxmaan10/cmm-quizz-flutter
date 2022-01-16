import 'package:quiz_with_friend/screens/questions.dart';

class Qestion_Brain {
  int _questionNumber = 0;
  List<Questions> _the_brain = [
    Questions(
        question: 'flutter waa maado lagu hormariyo webska ', answer: false),
    Questions(
        question: 'programming waa hard mana labaran karo', answer: false),
    Questions(
        question:
            'java hadaad barato waxaa kuu fudud inaa barato every program',
        answer: true),
    Questions(question: 'jamacada waxaa leysku baraa iot', answer: false),
    Questions(
        question:
            'graphic design waa waxa ugu fudud ee lagu baran karo one month',
        answer: true),
    Questions(question: 'luqada php waxay kaa cawin kartaa Api ', answer: true),
    Questions(
        question: 'Some cats are actually allergic to humans', answer: true),
    Questions(
        question: 'You can lead a cow down stairs but not up stairs.',
        answer: false),
    Questions(
        question: 'Approximately one quarter of human bones are in the feet.',
        answer: true),
    Questions(question: 'A slug\'s blood is green.', answer: true),
    Questions(
        question: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        answer: true),
    Questions(
        question: 'It is illegal to pee in the Ocean in Portugal.',
        answer: true),
    Questions(
        question:
            'No piece of square dry paper can be folded in half more than 7 times.',
        answer: false),
    Questions(
        question:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        answer: true),
    Questions(
        question:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        answer: false),
    // Questions(
    //     question:
    //         'The total surface area of two human lungs is approximately 70 square metres.',
    //     answer: true),
    // Questions(
    //     question: 'Google was originally called \"Backrub\".', answer: true),
    // Questions(
    //     question:
    //         'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
    //     answer: true),
    // Questions(
    //     question:
    //         'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
    //     answer: true),
    // Questions(question: 'somalia waa wadan afrikan ah', answer: true)
  ];

  String questionText() {
    return _the_brain[_questionNumber].question.toString();
  }

  bool? answer() {
    return _the_brain[_questionNumber].answer;
  }

  bool nextQuestion() {
    if (_questionNumber < _the_brain.length - 1) {
      _questionNumber++;
      return true;
    }
    return false;
  }

  restart() {
    _questionNumber = 0;
  }
}
