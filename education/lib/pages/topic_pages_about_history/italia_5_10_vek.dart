import 'package:education/model/history_question.dart';
import 'package:education/pages/history_test/italia_5_10_kylym_test_page.dart';
import 'package:flutter/material.dart';

class Italia extends StatelessWidget {
  const Italia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Тарых'.toUpperCase()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                const SizedBox(height: 5),
                const Text(
                  'Италия V-X кылым аралыгы',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  'V-X-кылымдардын аралыгында Италияда анын тарыхына жана маданиятына чоң таасирин тийгизген олуттуу саясий жана социалдык өзгөрүүлөр болгон.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Бул мезгилдин башында Италия көптөгөн майда мамлекеттерге жана аймактарга, анын ичинде Острогот жана Византия королдугуна, ошондой эле Ломбард королдугуна бөлүнгөн. Бул мамлекеттер Италиянын аймагын көзөмөлдөө үчүн күрөшкөн, бул көптөгөн чыр-чатактар ​​менен согуштарга алып келген.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Бирок VIII-кылымда Карл деген ат менен белгилүү болгон франк королу Карл Италиянын көпчүлүк бөлүгүн басып алып, аны өз бийлигине бириктирген. Ал Каролинг империясын түзүп, ал азыркы Италияга, Францияга, Германияга жана башка коңшу өлкөлөргө жайылган.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Италияда Улуу Карлдын бийлиги тушунда борбордук бийлик чыңдалып, франк административдик системасы киргизилген. Ал билим берүү, сот жана чиркөө уюмунда реформаларды жүргүзгөн. Карл ошондой эле ордосуна окумуштууларды жана сүрөтчүлөрдү тартып, маданият менен билим берүүнүн өнүгүшүнө дем берген.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Улуу Карл өлгөндөн кийин, империя бытырандылык жана ички чыр-чатактар ​​көйгөйлөрүнө туш болгон. IX-кылымда Италия ар кандай феодалдык башкаруучулар менен Тоскана марграттары жана Сполетонун графтары сыяктуу күчтүү үй-бүлөлөрдүн ортосундагы күрөштүн сахнасына айланган.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'X-кылымда Италиядагы абал Сарацендердин басып кириши жана Ыйык Рим империясынын таасири менен ого бетер татаалдашкан. Флоренция, Венеция, Генуя сыяктуу шаар-мамлекеттер аймактын саясий жана экономикалык турмушунда маанилүү роль ойной баштаган.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Италиянын тарыхындагы бул мезгил италиялык маданияттын гүлдөп-өнүгүшү менен да мүнөздөлгөн. Флоренция, Пиза жана Сиена сыяктуу улуу шаар-мамлекеттер Ренессанс искусствосунун, архитектурасынын жана илиминин борборлоруна айланган. Байыркы маданиятка жана классикалык мураска болгон кызыгуунун жанданышы улуу сүрөтчүлөрдүн, философтордун жана илимпоздордун чыгышына алып келди.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Италия ошондой эле Чыгыш менен Батышты байланыштырган маанилүү соода борбору болгон. Венеция жана Генуя сыяктуу соода шаарлары соода тармактарын жана таасирин кеңейтип, деңиз соодасынын бай жана гүлдөгөн борборлоруна айланган.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Бирок, саясий жана маданий ишмердүүлүк менен бирге Италия да ички кагылышуулардан, согуштардан жана кол салуулардан жапа чеккен. Шаарлар менен мамлекеттердин ортосундагы тынымсыз чыр-чатактар, чет элдик аскерлердин жана баскындардын таасири аймактын биримдигин жана туруктуулугун алсыраткан.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'X-кылымдын аягында Италия ар кандай башкаруучулар менен мамлекеттердин, анын ичинде Түштүк Италиянын Норман Королдугу менен Сицилиянын, Папа мамлекеттеринин жана Германиянын императорлорунун ортосундагы күрөштүн сахнасына айланган. Бул Италиянын андан ары бытыранды болушуна, шаар мамлекеттеринин жана коммуналардын ролунун күчөшүнө алып келди.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Ошентип, Италия 5-10-кылымдарда саясий өзгөрүү, кагылышуу жана маданий өнүгүү мезгилин башынан өткөргөн. Ал чирип бараткан империяга айланып, көптөгөн мамлекеттерге бөлүнүп, ошол эле учурда маданий гүлдөп-өнүгүүнүн, таасирдин жана сооданын борборуна айланган. Бул мезгил Италиянын тарыхынын жана маданиятынын калыптанышына, ошондой эле анын Европадагы келечектеги ролуна олуттуу таасирин тийгизген.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
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
                                  builder: (BuildContext context) =>
                                      ItaliaKorolduguTestPage(
                                    italia: italia,
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
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
