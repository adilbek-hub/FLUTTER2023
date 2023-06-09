import 'package:education/components/table_east.dart';
import 'package:education/components/table_north_balkan.dart';
import 'package:education/model/subjects.dart';
import 'package:education/model/europe_suroo.dart';
import 'package:education/pages/europe_test_page.dart';
import 'package:flutter/material.dart';

class EuropeContinenti extends StatelessWidget {
  const EuropeContinenti({super.key, required this.subjectsFull});
  final Subjects subjectsFull;

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
              Text(
                subjectsFull.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Text(subjectsFull.description),
              const Text(
                'Европанын Түндүк жана Балкан өлкөлөрү жана борборлору.',
                style: TextStyle(color: Color(0xff813597)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const NorthBalkanTable(),
              const SizedBox(height: 10),
              const Text(
                'Европанын Чыгыш Европа өлкөлөрү жана борборлору',
                style: TextStyle(color: Color(0xff813597)),
                textAlign: TextAlign.center,
              ),
              const Text(
                  'Бул Чыгыш Европа өлкөлөрүнүн айрымдары да Балкан элдеринин бир бөлүгү. Бул Батыш Европа өлкөлөрүнүн кээ бирлери түндүк элдеринин курамына кирет. Батыш Европа жана Чыгыш Европа өлкөлөрүнүн тизмеси жана алардын тиешелүү борборлору төмөнкү таблицада келтирилген.'),
              const SizedBox(height: 5),
              const Text(
                  'Төмөнкү таблицада Андоррадан Түркияга чейинки өлкөлөр Батыш Европанын, ал эми Азербайжандан Арменияга чейинки өлкөлөр Чыгыш Европанын бир бөлүгү болуп саналат.'),
              const SizedBox(height: 10),
              const EastTable(),
              const SizedBox(height: 10),
              const Text(
                'Көп берилүүчү суроолор',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Text(
                '1. Европа биримдигинде канча мамлекет бар?',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black54),
              ),
              const Text(
                  '27 өлкө Евробиримдиктин курамына кирет. Европа Биримдиги Европада жайгашкан 27 мүчө-өлкөнүн саясий жана экономикалык биримдиги. Европа Биримдигинде бирдиктүү ички рынок түзүлдү.'),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '2. Европа мамлекетпи же өлкөбү?',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54),
                ),
              ),
              const Text(
                  'Европа мамлекет да, өлкө да эмес. Европа – Азия континентине жана Африка континенттерине жакын жайгашкан континент. Европа эң өнүккөн жана өнүккөн континент. Дүйнөнүн көптөгөн өнүккөн өлкөлөрү Европада жайгашкан.'),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '3. Италия Европанын бир бөлүгүбү?',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54),
                ),
              ),
              const Text(
                  'Ооба, Италия Европанын бир бөлүгү. Италия Жер Ортолук деңизинин ортосунда жайгашкан. Италия Түштүк Европада жайгашкан. Аны Батыш Европанын бир бөлүгү деп да кароого болот. Италия башка европалык мамлекеттер менен, башкача айтканда, Словения, Австрия, Австрия, Швейцария жана Франция менен жер чек араларын бөлүшөт.'),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '4. АКШ Европадабы?',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54),
                ),
              ),
              const Text(
                  'Жок, АКШ Европада эмес. АКШ Түндүк Америка континентинин бир бөлүгү болуп саналат. АКШ Мексика жана Канада менен жер чектерин бөлүшөт. АКШ Орусия, Куба, Багам аралдары жана башкалар менен деңиз чек араларын бөлүшөт.'),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '5. Россия Европанын бир бөлүгүбү?',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54),
                ),
              ),
              const Text(
                  'Ооба, Орусия Европанын бир бөлүгү. Россия Европадагы эң чоң мамлекет. Россиянын негизги бөлүгү географиялык жактан Азияда жайгашканына карабастан, Россия Европа менен тыгыз маданий, этникалык жана саясий байланыштары бар болгондуктан, дагы эле европалык өлкө катары эсептелет.'),
              const SizedBox(height: 20),
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
                          child: Text('ТЕСТ'),
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
