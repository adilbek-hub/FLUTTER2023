/*Factory же Фабрика методу*/

// 1. Модель түзүп алабыз
class Mashina {
  Mashina({required this.model, required this.jyl, required this.nomer});

  final String model;
  final int jyl;
  final String nomer;

// 2. Модель менен чоогу factory жазайбыз
  // refactoring ozun kaytarat degen maani
  // fromJsondun maanisi json kelet. Emne kelet? Map kelet! Kanday formatta kelet? String jana dynamic formatta kelet!
  factory Mashina.fromJson(Map<String, dynamic> json) {
    //anan return kylasyn! Emne return kylasyn? Mashina return kylasyn!
    return Mashina(
        model: json['model'], jyl: json['jyl'], nomer: json['nomer']);
  }
}

// Бул Бекенд (API)
Map response = {
  'cars': [
    {'model': 'mers', 'jyl': 2022, 'nomer': 'ABB200'},
    {'model': 'toyota', 'jyl': 2021, 'nomer': 'ABB300'},
    {'model': 'honda', 'jyl': 2020, 'nomer': 'ABB400'},
    {'model': 'ford', 'jyl': 2022, 'nomer': 'ABB500'},
  ]
};

void main(List<String> args) {
  // 3. carsка барабарлайбыз!Эмнени барабарлайбыз? Бекендтеги респонстун ичиндеги
  // карстын ичиндеги нолунчу индексти алып барабарлайбыз!
  final cars1 = Mashina.fromJson(response['cars'][0]);
  final cars2 = Mashina.fromJson(response['cars'][1]);
  final cars3 = Mashina.fromJson(response['cars'][2]);
  // carsка барабарланган responseтун ичиндеги carsтын ичиндеги нолунунчу индекстин ичиндеги modelди консолдон чыгар.
  print(cars1.model);
  print(cars2.model);
  print(cars3.model);
}
