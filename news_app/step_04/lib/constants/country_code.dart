/*class Country {
  const Country(this.name, this.domen);
  final String name;
  final String domen;
}

const Country unitedArabEmirates = Country('United Arab Emirates', 'ae');
const Country swidzerland = Country('Swidzerland', 'ch');
const Country russia = Country('Россия', 'ru');
const Country india = Country('India', 'in');
const Country unitedStates = Country('United States', 'us');
const Country korea = Country('Korea', 'kr');
const Country turkey = Country('Turkey', 'tr');
const Country ukrain = Country('Ukrain', 'ua');
const Country italy = Country('Italy', 'it');*/

//List
//Map
//Set

// Set ichindeki kolleksyany kaitalanuusuna jol berbeit

/*
  List sandarList = [1,2,3,4,5,6,7,3,5,7,9];
  Set sandarSet = {1,2,3,4,5,6,7,3,5,7,9};
  print(sandarList); => [1, 2, 3, 4, 5, 6, 7, 3, 5, 7, 9]
  print(sandarSet); => {1, 2, 3, 4, 5, 6, 7, 9}
*/

/*const Set<Country> countriesSet = {
  unitedArabEmirates,
  swidzerland,
  russia,
  india,
  unitedStates,
  korea,
  turkey,
  ukrain,
  italy
};*/

class Country {
  const Country(this.name, this.domain);
  final String name;
  final String domain;
}

const Country unitedStates = Country('United States of America', 'us');
const Country japan = Country('Japan', 'jp');
const Country turkey = Country('Turkey', 'tr');
const Country france = Country('France', 'fr');
const Country ukrain = Country('Ukrain', 'ua');
const Country russia = Country('Russia', 'ru');
const Country unitedArabEmirates = Country('United Arab Emirates', 'ae');
const Country canada = Country('Canada', 'ca');

Set<Country> countries = {
  unitedStates,
  japan,
  turkey,
  france,
  ukrain,
  russia,
  unitedArabEmirates,
  canada
};
