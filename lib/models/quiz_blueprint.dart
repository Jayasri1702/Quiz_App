class QuizQuestions {
  const QuizQuestions(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> getShuffled() {
    var shuffleCopiedList = List.of(answers);
    shuffleCopiedList.shuffle();
    return shuffleCopiedList;
  }
}
