import 'package:education/components/table_east.dart';
import 'package:education/components/table_north_balkan.dart';
import 'package:education/model/subjects.dart';
import 'package:education/model/europe_suroo.dart';
import 'package:education/pages/europe_test_page.dart';
import 'package:flutter/material.dart';

class KishiJanaJanybar extends StatelessWidget {
  const KishiJanaJanybar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: SweepGradient(
              colors: [Colors.red, Colors.blue, Colors.pink],
              startAngle: 10,
              endAngle: 30,
              tileMode: TileMode.repeated,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Биологиядагы адамдар менен сүт эмүүчүлөрдүн ортосундагы окшоштуктарды жана айырмачылыктарды ар кандай көз караштардан кароого болот. Бул жерде алардын айрымдары:',
                style: TextStyle(color: Color(0xff813597)),
                textAlign: TextAlign.center,
              ),
              const Text(
                '1.Организмдин түзүлүшү жана функциялары:',
                style: TextStyle(color: Color(0xff813597)),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Окшоштуктар: адамдар сыяктуу эле, сүт эмүүчүлөрдүн нерв, кан айлануу, дем алуу жана тамак сиңирүү системалары сыяктуу ар кандай системалардан турган татаал дене түзүлүшүнө ээ. Айырмасы: Адамдардын уникалдуу анатомиялык өзгөчөлүктөрү бар, мисалы, тик туруу, чоң мээнин өнүгүшү жана куралды колдонуу.',
                style: TextStyle(color: Color(0xff813597)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                '2.Сүт берүү:',
                style: TextStyle(color: Color(0xff813597)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Окшоштуктары: Башка сүт эмүүчүлөр сыяктуу эле, адамдар балдарын сүт бездери чыгарган сүт менен азыктандырышат.Айырмачылыгы: жеке адам бала эмизүү процессинин тегерегинде социалдык жана маданий аспектилерди иштеп чыккан, мисалы, бирге тамактандыруу жана узак мөөнөттүү үзгүлтүктүү эмчек эмизүү.',
                style: TextStyle(color: Color(0xff813597)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                '3.Интеллект жана жүрүм-турум:',
                style: TextStyle(color: Color(0xff813597)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Окшоштук: Сүт эмүүчүлөрдүн жана адамдардын өнүккөн нерв системасы бар, ал аларды курчап турган дүйнөнү үйрөнүү, эстеп калуу жана кабылдоо жөндөмүн камсыз кылат.Айырмасы: Адамда тил, маданият, абстракттуу ой жүгүртүү жана чыгармачылык сыяктуу өнүккөн интеллект жана татаал коомдук жүрүм-турум бар.',
                style: TextStyle(color: Color(0xff813597)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                '4.Экология жана адаптациялар:',
                style: TextStyle(color: Color(0xff813597)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Айырмачылыгы: Адам өзүнүн жогорку деңгээлде өнүккөн интеллектинин жана технологиялык прогрессинин жардамы менен башка сүт эмүүчүлөргө караганда айлана-чөйрөнү алда канча көбүрөөк өзгөртүүгө жөндөмдүү. Адам жаңы экосистемаларды түзө алат, жаратылыш ресурстарын өзгөртө алат жана биологиялык ар түрдүүлүккө башка жаныбарларга таасир эте албайт.',
                style: TextStyle(color: Color(0xff813597)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Маданий адаптациялар: Адам ошондой эле ар кандай экологиялык шарттарда аман калууга жана өнүгүүгө жардам берген технологияларды, социалдык структураларды, диний жана маданий практикаларды камтыган маданий адаптацияларды иштеп чыгууга жана берүүгө жөндөмдүү.',
                style: TextStyle(color: Color(0xff813597)),
                textAlign: TextAlign.center,
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
