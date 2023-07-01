import 'package:education/model/biology_question.dart';
import 'package:education/model/europe_suroo.dart';
import 'package:education/pages/biology_test/nerv_sistemasy_test_page.dart';
import 'package:education/pages/geography_test/europe_test_page.dart';
import 'package:flutter/material.dart';

class NervSistemasy extends StatelessWidget {
  const NervSistemasy({super.key});

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
                  'Нерв системасы',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Нерв системасы – сигналдарды берүүчү жана организмдин ишин координациялоочу түзүлүштөрдүн жана органдардын татаал тармагы. Ал дененин бардык функцияларын, анын ичинде кыймылды, кабылдоону, ой жүгүртүүнү, эс тутумду, эмоцияларды жана башка көптөгөн процесстерди жөнгө салууда жана көзөмөлдөөдө негизги ролду ойнойт.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Нерв системасы эки негизги компоненттен турат: борбордук нерв системасы (БНС) жана перифериялык нерв системасы (ПНС).',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                const Text(
                  '1. Борбордук нерв системасы (CNS): мээ жана жүлүн камтыйт. Мээ баш сөөктө жайгашкан жана дененин булчуңдарды координациялоо, эс тутум, ой жүгүртүү, сезим жана жүрүм-турум сыяктуу негизги функцияларын башкарат. Жүлүн жүлүн каналынын ичинде өтөт жана мээ менен дененин калган бөлүгүнүн ортосунда сигналдарды өткөрүү үчүн жооптуу.',
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  '2. Перифериялык нерв системасы (PNS): мээден жана жүлүндөн чыккан жана бүт денени кыдырган бардык нервдерди камтыйт. PNS соматикалык жана вегетативдик нерв системаларына бөлүнөт.',
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            '\n• Соматикалык нерв системасы аң-сезимдүү кыймылдарды жана кабылдагычтардан (мисалы, көз, кулак, тери) борбордук нерв системасына маалымат берүүнү башкарат.',
                      ),
                      TextSpan(
                        text:
                            '\n• Вегетативдик нерв системасы жүрөктүн согушу, дем алуу, тамак сиңирүү жана бөлүп чыгаруу сыяктуу организмдин автоматтык функцияларын жөнгө салат. Ал андан ары симпатикалык жана парасимпатикалык системаларга бөлүнөт, алар организмде тең салмактуулукту сактоо үчүн өз ара аракеттенишет.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Нерв системасынын функцияларына нерв импульстарын берүү, кыймылдарды координациялоо, маалыматты иштетүү, органдардын жана системалардын ишин жөнгө салуу, эмоцияларды жана эс тутумду колдоо, ошондой эле мейкиндикте тең салмактуулукту жана багытты башкаруу кирет.Нерв системасы организм менен айлана-чөйрөнүн ортосундагы байланышты камсыз кылууда негизги ролду ойноп, кабылдоого мүмкүндүк берет',
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
                                      NervSistemasyTestPage(
                                    nervSistemasy: nervSistemasy,
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
