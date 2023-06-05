class Countries {
  const Countries(this.name, this.domain);
  final String name;
  final String domain;
}

const Countries oAE = Countries('OAE', 'ae');
const Countries swezerland = Countries('Swezerland', 'ch');
const Countries france = Countries('France', 'fr');
const Countries india = Countries('India', 'in');
const Countries korea = Countries('Korea', 'kr');
const Countries italy = Countries('Italy', 'lt');
const Countries russia = Countries('Russia', 'ru');

Set<Countries> countriesSet = {
  oAE,
  swezerland,
  france,
  india,
  korea,
  italy,
  russia,
};
