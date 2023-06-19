import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:education/model/history_question.dart';
import 'package:education/model/usa_suroo.dart';
import 'package:education/pages/history_test_page.dart';
import 'package:education/pages/usa_test_page.dart';
import 'package:flutter/material.dart';

final TextStyle initialStyle = TextStyle(
  fontSize: 20.0,
  color: Colors.grey,
  fontWeight: FontWeight.bold,
);

final TextStyle finalStyle = TextStyle(
  fontSize: 22.0,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);
var isTapped = false;

class Usa extends StatelessWidget {
  const Usa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Америка Кошмо Штаттары'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(children: [
          DropCapText(
            'Америка Кошмо Штаттары, АКШ (англ. United States of America, USA) – Түндүк Америкадагы мамлекет. Түндүгүнөн Канада, түштүк-чыгышынан Куба (Гуантанамо аскер базасы), түштүк-батышынан Мексика менен чектешет. Чыгышын Атлантика океаны, батышын Тынч океан, түштүгүн Мексика булуңу чулгайт. Аянты 9,4 млн км2. Калкы 314,5 млн (2012). Борбору - Вашингтон. Мамлекеттик тили - англис тили. Акча бирдиги - АКШ доллары. Административдик аймактары - штат укугун алган өзүнчө Аляска, Гавайи штаттарынан жана Колумбия федерация (борбордук) округунан турат . АКШнын ээликтери: Вест-Индиядагы Виргиния аралы, Чыгыш Самоа, Гуам жана Океаниядагы бир топ майда аралдар. АКШнын убактылуу «опекасында» Тынч океандагы Каролина, Мариана жана Маршалл аралдарынан турат. 1903-жылдан бери ушунун таандык Панама каналынын зонасы АКШнын ижарасында.',
            dropCap: DropCap(
              width: 130,
              height: 130,
              child: Image.asset(
                  'assets/images/capitals/USA_orthographic.svg.png'),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'АКШнын штаттары',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Table(
            textDirection: TextDirection.rtl,
            defaultVerticalAlignment: TableCellVerticalAlignment.top,
            border: TableBorder.all(width: 0.2, color: Colors.black),
            children: const [
              TableRow(children: [
                Text(
                  "Админ. борборлору",
                  textScaleFactor: 1,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Калкы, млн киши (1996)",
                  textScaleFactor: 1,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Штаттары",
                  textScaleFactor: 1,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ]),
              TableRow(children: [
                Text("Бойсе", textScaleFactor: 1),
                Text("1,2", textScaleFactor: 1),
                Text("Айдахо", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Де-Мойн", textScaleFactor: 1),
                Text("2,9", textScaleFactor: 1),
                Text("Айова", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Монтгомери", textScaleFactor: 1),
                Text("4,3", textScaleFactor: 1),
                Text("Алабама", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Жуно", textScaleFactor: 1),
                Text("0,6", textScaleFactor: 1),
                Text("Аляска", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Финикс", textScaleFactor: 1),
                Text("4,4", textScaleFactor: 1),
                Text("Аризона", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Литл-Рок", textScaleFactor: 1),
                Text("2,5", textScaleFactor: 1),
                Text("Арканзас", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Чарлстон", textScaleFactor: 1),
                Text("1,8", textScaleFactor: 1),
                Text("Батыш Виргиния", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Шайенн", textScaleFactor: 1),
                Text("0,5", textScaleFactor: 1),
                Text("Вайоминг", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Олимпия", textScaleFactor: 1),
                Text("5,5", textScaleFactor: 1),
                Text("Вашингтон Штат", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Монтпильер", textScaleFactor: 1),
                Text("0,6", textScaleFactor: 1),
                Text("Вермонт", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Ричмонд", textScaleFactor: 1),
                Text("6,7", textScaleFactor: 1),
                Text("Виржиния", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Мадисон", textScaleFactor: 1),
                Text("5,2", textScaleFactor: 1),
                Text("Висконсин", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Гонолулу", textScaleFactor: 1),
                Text("1,2", textScaleFactor: 1),
                Text("Гавайи", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Атланта", textScaleFactor: 1),
                Text("7,4", textScaleFactor: 1),
                Text("Жоржия", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Довер", textScaleFactor: 1),
                Text("0,7", textScaleFactor: 1),
                Text("Делавэр", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Спрингфилд", textScaleFactor: 1),
                Text("11,9", textScaleFactor: 1),
                Text("Иллинойс", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Индианаполис", textScaleFactor: 1),
                Text("5,8", textScaleFactor: 1),
                Text("Индиана", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Сакраменто", textScaleFactor: 1),
                Text("31,9", textScaleFactor: 1),
                Text("Калифорния", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Топика", textScaleFactor: 1),
                Text("2,56", textScaleFactor: 1),
                Text("Канзас", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Франкфорт", textScaleFactor: 1),
                Text("3,9", textScaleFactor: 1),
                Text("Кентукки", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Денвер", textScaleFactor: 1),
                Text("3,8", textScaleFactor: 1),
                Text("Колорадо", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Хартфорд", textScaleFactor: 1),
                Text("3,3", textScaleFactor: 1),
                Text("Коннектикут", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Батон-Руж", textScaleFactor: 1),
                Text("4,4", textScaleFactor: 1),
                Text("Луизиана", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Бостон", textScaleFactor: 1),
                Text("6,1", textScaleFactor: 1),
                Text("Массачусетс", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Сент-Пол", textScaleFactor: 1),
                Text("4,7", textScaleFactor: 1),
                Text("Миннесота", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Жэксон", textScaleFactor: 1),
                Text("2,7", textScaleFactor: 1),
                Text("Миссисипи", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Жефферсон-Сити", textScaleFactor: 1),
                Text("5,4", textScaleFactor: 1),
                Text("Миссури", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Лансинг", textScaleFactor: 1),
                Text("9,6", textScaleFactor: 1),
                Text("Мичиган", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Хелина", textScaleFactor: 1),
                Text("0,9", textScaleFactor: 1),
                Text("Монтана", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Огаста", textScaleFactor: 1),
                Text("1,2", textScaleFactor: 1),
                Text("Мэн", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Аннаполис", textScaleFactor: 1),
                Text("5,07", textScaleFactor: 1),
                Text("Мэриленд", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Линкольн", textScaleFactor: 1),
                Text("1,7", textScaleFactor: 1),
                Text("Небраска", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Карсон-Сити", textScaleFactor: 1),
                Text("1,6", textScaleFactor: 1),
                Text("Невада", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Трентон ", textScaleFactor: 1),
                Text("8", textScaleFactor: 1),
                Text("Нью-Жерси", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Олбани", textScaleFactor: 1),
                Text("18,2", textScaleFactor: 1),
                Text("Нью-Йорк", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Санта-Фе", textScaleFactor: 1),
                Text("1,7", textScaleFactor: 1),
                Text("Нью-Мексико", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Конкорд", textScaleFactor: 1),
                Text("1,2", textScaleFactor: 1),
                Text("Нью-Хемпшир", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Колумбус", textScaleFactor: 1),
                Text("11,2", textScaleFactor: 1),
                Text("Огайо", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Оклахома-Сити", textScaleFactor: 1),
                Text("3,3", textScaleFactor: 1),
                Text("Оклахома", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Сейлем", textScaleFactor: 1),
                Text("3,2", textScaleFactor: 1),
                Text("Орегон", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Харрисберг", textScaleFactor: 1),
                Text("12,1 (1994)", textScaleFactor: 1),
                Text("Пенсильвания", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Провиденс", textScaleFactor: 1),
                Text("1,0", textScaleFactor: 1),
                Text("Род-Айленд", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Бисмарк", textScaleFactor: 1),
                Text("0,7", textScaleFactor: 1),
                Text("Түндүк Дакота", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Роли", textScaleFactor: 1),
                Text("7,3", textScaleFactor: 1),
                Text("Түндүк Каролина", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Нашвилл", textScaleFactor: 1),
                Text("5,3", textScaleFactor: 1),
                Text("Теннесси", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Остин", textScaleFactor: 1),
                Text("19", textScaleFactor: 1),
                Text("Техас", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Пирр", textScaleFactor: 1),
                Text("0,7", textScaleFactor: 1),
                Text("Түн. Дакота", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Колумбия", textScaleFactor: 1),
                Text("3,7", textScaleFactor: 1),
                Text("Түш. Каролина", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Таллахасси", textScaleFactor: 1),
                Text("14,4", textScaleFactor: 1),
                Text("Флорида", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Солт-Лейк-Сити", textScaleFactor: 1),
                Text("2", textScaleFactor: 1),
                Text("Юта", textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text("Вашингтон", textScaleFactor: 1),
                Text("0,5", textScaleFactor: 1),
                Text("Колумбия (Columbia) округу (борб.)", textScaleFactor: 1),
              ]),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Конституция жана саясат',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'АКШ - федеративдүү мамлекет. АКШнын Конституциясы 1787-ж. 17-сентябрда кабыл алынып, 1789-ж. 4-мартта күчүнө кирген. Башкаруу формасы - президенттик республика. Мамлекет жана өкмөт башчысы - президент; ал ошондой эле куралдуу күчтөрдүн да башкы башчысы. Президент жана вице-президент эки баскычтуу шайлоо менен 4 жылга шайланат. Мыйзам чыгаруу бийлигинин жогорку органы - Конгресс, ал 2 палатадан – өкүлдөр (435 депутат 2 жылга шайланат) жана сенаттар палаталарынан (ар бир штаттан 2ден сенатор 6 жылга шайланат) турат. Сенаттын курамынын үчтөн бир бөлүгү ар 2 жылда жаңыртылат. Өкүлдөр палатасынын укугу сенаттан кененирээк. Ар бир штат өз конституциясына, мыйзам чыгаруу (легислатура) жана аткаруу органдарына ээ. Штаттарды башкаруу губернаторлор тарабынан ишке ашырылат. АКШда негизинен эки партиялуу система орун алган: Демократиялык (1828) жана Республикалык (1854) партиялар. Мындан сырткары Коммунисттик ж. б. саясий партиялар да бар.',
          ),
          const SizedBox(height: 10),
          const Text(
            'Мамлекеттер',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          DropCapText(
            'Америкада азыркы учурда 50 штат бар. Аляска менен Хавайга кошулган эң акыркы жаңы штаттар.Калифорния - эң көп калк жашаган штат, 38,332,521 тургуну (2013-жылкы эсептөө); Вайомиңг эң аз калк отурукташкан, болжол менен 582 658 киши жашайт. 2012-жылга карата 646,449 жашоочусу бар Колумбия округу эң аз калк жашаган эки штатка (Вайомиңг жана Вермонт) караганда жогору. Аянты боюнча эң ири штат - Аляска, 665,384 чарчы милди (1,723,340 км2), эң кичинеси - Род-Айленд, 1545 чарчы милди (4,000 км2) камтыйт. Азыркы Конституцияны биринчи жолу ратификациялаган Делавэр, ал аны 1787-жылы 7-декабрда жасаган, ал эми эң жаңы штат - [[Гавайи, ал 1959-жылы 21-августта Союзга кабыл алынган. Калкы жана саны жагынан эң чоң аймак болуп саналат. Пуэрто-Рико, 2010-жылдагы эл каттоодо 3,725,789 тургундары жана жалпы аянты 5325 чарчы мил (13,790 км2).',
            dropCap: DropCap(
              width: 130,
              height: 130,
              child: Image.asset('assets/images/capitals/usaa.png'),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Табияты',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'АКШнын аймагынын 1/2ин (дээрлик батыш бөлүгүн) Түндүк Америка Кордильерасынын бийик кырка жана бөксө тоолору, платолор ээлейт. Кордильеранын чыгыш чет жакасын бийиктиги 4000 мден ашкан Аскалуу тоолору, батышын Тынч океанды бойлой жайгашкан Жээк кырка тоолору түзөт. АКШнын эң бийик жери (6193 м) - Мак-Кинли чокусу Аляска кыркатоосунда. Чыгышын Аппалачи тоолору (бийиктиги 2037 м) ээлейт. Кордильера менен Аппалачинин аралыгында жазы - Борбордук түздүктөр (бийиктиги 500 мге чейин), Улуу түздүктөр (бийиктиги 1600 мге чейин), түштүктө Жээк түздүктөрү Мексика бою ойдуңу, Атлантика бою ойдуңу (Флорида жарым аралы кошо) орун алган. АКШнын аймагынын, ошондой эле жалпы материктин эң чуңкур жери - Чоң Бассейндеги (Мохаве чөлүндөгү) Ажал өрөөнү, ал деңиз деңгээли - 86 м төмөн жайгашкан. АКШ табигый ресурстарга бай: көмүр, жез (өндүрүшү боюнча дүйнөдө 2-орунда), темир, сымап, күмүш, алтын, никель, цинк (дүйнөдө алдыңкылардын бири), вольфрам, уран, фосфат, нефть жана табигый газ (казып алынуусу боюнча дүйнөдө 2-орунда), жыгач даярдоо.',
          ),
          const SizedBox(height: 10),
          const Text(
            'Климаты',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Мелүүн жана субтропиктик континенттик климат басымдуу; Флорида жарым аралына тропиктик, Аляскага мелүүн субарктикалык климат мүнөздүү. Январдын орточо температурасы Аляскада -24,8°С, Борбордук түздүктөрдүн түндүгүндө -18°С, өлкөнүн түштүк-батышында -12°С, Флорида жарым аралында 20 Сге чейин. Июлдун орточо температурасы батыш жээктеринде 14-22°С, чыгышында 1626°С, ички платолор менен бөксө тоолордун түштүгүндө 32°С. Өлкөнүн, ошондой эле бүт материктин эң ысык жана кургакчыл жери да Мохаве чөлүндөгү Ажал өрөөнү, анда абанын абсолюттук максимуму 57,7°С катталган; жылдык жаан-чачындын өлчөмү 50-100 мм. Жаан-чачын чыгышында жана түндүк-батыш жээк тилкелеринде 1000-2000 түздүктөрдө 600-900 мм,Улуу түздүктөрдө 400-600 мм, ички бөксө тоолор менен платолордо 400 ммден, айрым жерлеринде 100 ммден аз (Мохаве чөлүндө) жаайт. Ири дарыялары: Миссисипи жана анын куймалары Миссури, Огайо, Колумбия, Колорадо, Юкон. Миссисипинин сол куймаларынын суусу мол, көп жерлерде кеме жүрөт, гидроэнергия ресурстарына бай. Оң куймаларынын суусу аз, агымы шар. Өлкөнүн түндүк-чыгышында Улуу көлдөр системасы (жарым-жартылайы Канадада) жайгашкан.',
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 80,
            width: 300,
            child: Card(
              color: Colors.red[300],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Урматтуу окуучу!! Тест сынагынан өтүңүз.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff42d792),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => UsaTestPage(
                              usaSuroo: usaSuroo,
                            ),
                          ),
                        );
                      },
                      child: const Text('ТЕСТ'),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
        ]),
      ),
    );
  }
}
