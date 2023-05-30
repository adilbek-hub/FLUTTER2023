class Source {
  const Source({this.id, this.name});
  final String? id;
  final String? name;

// Factory bul fabrica! al emne alat? syrttan bir syroi alyp kaysyl model tuzulgon bolso oshol modeldi kaytaryp beret!
// factory function tuzup aga fromJson degen at berip functiondun ichine Map syrio berebiz Map syrio <String, dynamic> alat jana json dep atyn atap koyobuz.
/*kashanun ichindegi json bul at. uchul at menen apidegi id, namedi chakyryp alabuz*/
  factory Source.fromJsone(Map<String, dynamic> json) {
    // Source kaytarabuz dagy anyn ichindegi id ge jsondun 'id' sin baylaybyz, nameine jsondun 'name'in baylaybuz
    return Source(
      id: json['id'],
      name: json['name'],
    );
  }
}
