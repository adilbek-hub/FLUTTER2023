class EuropeSuroo {
  const EuropeSuroo(
      {required this.text, required this.jooptor, required this.image});
  final String text;
  final List<Joop> jooptor;
  final String image;
}

class Joop {
  const Joop({required this.text, this.isTrue = false});
  final String text;
  final bool isTrue;
}

List<EuropeSuroo> europeQuestion = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10];
const s1 = EuropeSuroo(
    text: 'Parice',
    jooptor: [
      Joop(text: 'Germany'),
      Joop(text: 'France', isTrue: true),
      Joop(text: 'Italy'),
      Joop(text: 'Austria')
    ],
    image: 'Parice');

const s2 = EuropeSuroo(
    text: 'Berlin',
    jooptor: [
      Joop(text: 'Germany', isTrue: true),
      Joop(text: 'France'),
      Joop(text: 'Italy'),
      Joop(text: 'Austria')
    ],
    image: 'Berlin');

const s3 = EuropeSuroo(
    text: 'Bern',
    jooptor: [
      Joop(text: 'Germany'),
      Joop(text: 'France'),
      Joop(text: 'Switzerland', isTrue: true),
      Joop(text: 'Austria')
    ],
    image: 'BernSwitzerland');

const s4 = EuropeSuroo(
    text: 'Brusel',
    jooptor: [
      Joop(text: 'Germany'),
      Joop(text: 'France'),
      Joop(text: 'Italy'),
      Joop(text: 'Belgium', isTrue: true)
    ],
    image: 'BruselBelgium');

const s5 = EuropeSuroo(
    text: 'Copenhagen',
    jooptor: [
      Joop(text: 'Denmark', isTrue: true),
      Joop(text: 'France'),
      Joop(text: 'Italy'),
      Joop(text: 'Austria')
    ],
    image: 'CopenhagenDenmark');

const s6 = EuropeSuroo(
    text: 'Helsinki',
    jooptor: [
      Joop(text: 'Germany'),
      Joop(text: 'Finland', isTrue: true),
      Joop(text: 'Spain'),
      Joop(text: 'Sweden')
    ],
    image: 'HelsinkiFinnin');

const s7 = EuropeSuroo(
    text: 'Lisbon',
    jooptor: [
      Joop(text: 'Germany'),
      Joop(text: 'France'),
      Joop(text: 'Portugal', isTrue: true),
      Joop(text: 'Austria')
    ],
    image: 'LisbonPortugal');

const s8 = EuropeSuroo(
    text: 'Madrid',
    jooptor: [
      Joop(text: 'Greece'),
      Joop(text: 'Denmark'),
      Joop(text: 'Portugal'),
      Joop(text: 'Spain', isTrue: true)
    ],
    image: 'Madrid');

const s9 = EuropeSuroo(
    text: 'Stockholm',
    jooptor: [
      Joop(text: 'Sweden', isTrue: true),
      Joop(text: 'France'),
      Joop(text: 'Italy'),
      Joop(text: 'Austria')
    ],
    image: 'StockholmSweden');

const s10 = EuropeSuroo(
    text: 'Viena',
    jooptor: [
      Joop(text: 'Ukrain'),
      Joop(text: 'Bulgaria'),
      Joop(text: 'Austria', isTrue: true),
      Joop(text: 'Georgia')
    ],
    image: 'VienaAustria');
