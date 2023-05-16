class QuizQuestion {
  QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledList() {
    final copyOfList = List.of(answers);
    copyOfList.shuffle();
    return copyOfList;
  }
}
