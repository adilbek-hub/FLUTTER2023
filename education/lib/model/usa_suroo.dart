class UsaSuroo {
  const UsaSuroo(
      {required this.text, required this.jooptor, required this.image});
  final String text;
  final List<Joop> jooptor;
  final String image;
}

class Joop {
  const Joop({required this.text, required this.isBool});
  final String text;
  final bool isBool;
}

const u1 = UsaSuroo(
    text: 'Америкада канча штат бар?',
    jooptor: [
      Joop(text: '50', isBool: true),
      Joop(text: '51', isBool: false),
      Joop(text: '49', isBool: false),
      Joop(text: '63', isBool: false),
    ],
    image: 'state');
List<UsaSuroo> usaQuestion = [u1];
