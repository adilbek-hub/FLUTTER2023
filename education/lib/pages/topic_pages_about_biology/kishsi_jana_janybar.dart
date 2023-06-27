import 'package:education/model/europe_suroo.dart';
import 'package:education/pages/europe_test_page.dart';
import 'package:flutter/material.dart';

class KishiJanaJanybar extends StatelessWidget {
  const KishiJanaJanybar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Биология'.toUpperCase()),
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
                  'Кишинин сүт эмүүчү жаныбарлар менен окшоштугу жана айырмачылыгы',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Биологиядагы адамдар менен сүт эмүүчүлөрдүн ортосундагы окшоштуктарды жана айырмачылыктарды ар кандай көз караштардан кароого болот. Бул жерде алардын айрымдары:',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                const Text(
                  '1.Организмдин түзүлүшү жана функциялары:',
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 3),
                const Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Окшоштуктар: ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            'Адамдар сыяктуу эле, сүт эмүүчүлөрдүн нерв, кан айлануу, дем алуу жана тамак сиңирүү системалары сыяктуу ар кандай системалардан турган татаал дене түзүлүшүнө ээ.',
                      ),
                      TextSpan(
                        text: ' Айырмасы: ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            'Адамдардын уникалдуу анатомиялык өзгөчөлүктөрү бар, мисалы, тик туруу, чоң мээнин өнүгүшү жана куралды колдонуу.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                ////////////
                const SizedBox(height: 10),
                const Text(
                  '2.Сүт берүү:',
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 3),
                const Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Окшоштуктары:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Башка сүт эмүүчүлөр сыяктуу эле, адамдар балдарын сүт бездери чыгарган сүт менен азыктандырышат.',
                      ),
                      TextSpan(
                        text: '\nАйырмасы:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Жеке адам бала эмизүү процессинин тегерегинде социалдык жана маданий аспектилерди иштеп чыккан, мисалы, бирге тамактандыруу жана узак мөөнөттүү үзгүлтүктүү эмчек эмизүү.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                //////////////
                const SizedBox(height: 10),
                const Text(
                  '3.Интеллект жана жүрүм-турум:',
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 3),
                const Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Окшоштуктары:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            'Сүт эмүүчүлөрдүн жана адамдардын өнүккөн нерв системасы бар, ал аларды курчап турган дүйнөнү үйрөнүү, эстеп калуу жана кабылдоо жөндөмүн камсыз кылат.',
                      ),
                      TextSpan(
                        text: '\nАйырмасы:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Адамда тил, маданият, абстракттуу ой жүгүртүү жана чыгармачылык сыяктуу өнүккөн интеллект жана татаал коомдук жүрүм-турум бар.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                /////////////
                const SizedBox(height: 10),
                const Text(
                  '4.Экология жана адаптациялар:',
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 3),
                const Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nАйырмасы:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Адам өзүнүн жогорку деңгээлде өнүккөн интеллектинин жана технологиялык прогрессинин жардамы менен башка сүт эмүүчүлөргө караганда айлана-чөйрөнү алда канча көбүрөөк өзгөртүүгө жөндөмдүү. Адам жаңы экосистемаларды түзө алат, жаратылыш ресурстарын өзгөртө алат жана биологиялык ар түрдүүлүккө башка жаныбарларга таасир эте албайт.',
                      ),
                      TextSpan(
                        text: '\nМаданий адаптациялар:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 80, 108, 250),
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic),
                      ),
                      TextSpan(
                        text:
                            '\nАдам ошондой эле ар кандай экологиялык шарттарда аман калууга жана өнүгүүгө жардам берген технологияларды, социалдык структураларды, диний жана маданий практикаларды камтыган маданий адаптацияларды иштеп чыгууга жана берүүгө жөндөмдүү.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                /////////////
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
                                      EuropeTestPage(suroo: europeQuestion),
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
