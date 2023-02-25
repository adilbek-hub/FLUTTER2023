//Бул Flutter Материал пакетин импорттоочу Dart файлынын башталышы. Материал пакети Flutter'те заманбап, жооп берүүчү жана кооз колдонуучу интерфейстерин куруу үчүн виджеттерди жана куралдарды камсыз кылат.
import 'package:flutter/material.dart';

//void:main function ech nerse kaytarbayt
//main: Negizgi function atalyshy
//(): Functiondun funksia ekenin bildiret
//{}: Funksianyn denesi
//Бул негизги деп аталган Dart функциясы. Flutter тиркемесинде негизги функция бул колдонмонун кирүү чекити, ал жерде программа аткарыла баштайт.
void main() {
  // runApp bul ichine Widget argumentin ala turgan funksia
  // constants: bir gana jolu kurulat(turuktuu), Misaly MyApp bashka jakta da berilse MyApp ichinde emne kurulsa osonu bere beret. Const oshol nerseni kylat.
  // MyApp Бир класстын аталышы(StatelessWidget => Widget)
  runApp(const MyApp());
}

// class дарт үчүн жаңы түшүнүк(object)
// MyApp Виджеттен келген класс(object)
// extends StatelessWidgetтен MyAppке мурас берүү(), Бул MyApp StatelessWidget субклассы экенин жана StatelessWidget классынын бардык касиеттерин жана ыкмаларын мурастайт дегенди билдирет. Ал ошондой эле зарыл болгон өз касиеттерин жана ыкмаларын аныктай алат.
// StatelessWidget
class MyApp extends StatelessWidget {
  //key bir widgetke achkych. Test jazganda ar bit widgetti key arkyluu tabuu uchun koldonulat.
  // super: Атасына бериле турган касиетти (property) берүү үчүн. (childтан parentке берет)
  const MyApp({super.key});

  // This widget is the root of your application.
  //  @override атасындагы функцияны кайра жазуу. Мисалы: build методу MyApp та бар жана StatelessWidget те да бар.
  // а биз айтабыз ооба бул метод атасында бар бирок сен аны кылба муну кыл деп @overrideты берип build методунун ичине
  ////өзүбүз каалаган виджеттерди колдоно беребиз.

  @override
  // Widget: бул build методунун кайтаруу тиби
  //build: Фукнкциянын аты
  // build(BuildContext context): Адрес. Тиркеменин ичиндеги виджет дарагынын маршрутун көзөмөлдөөчү вектор.
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    // setState бул функция. setState чакырылганда build метод кайра иштейт
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
