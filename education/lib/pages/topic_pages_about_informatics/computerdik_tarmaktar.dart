import 'package:education/model/europe_suroo.dart';
import 'package:education/model/informatica_suroo.dart';
import 'package:education/pages/geography_test/europe_test_page.dart';
import 'package:education/pages/informatica_test/computerdik_tarmaktar_test_page.dart';
import 'package:flutter/material.dart';

class ComputerdicTarmaktar extends StatelessWidget {
  const ComputerdicTarmaktar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Информатика'.toUpperCase()),
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
                  'Компьютердик тармактар',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Компьютердик тармак – маалымат жана ресурстарды алмашуу максатында кошулган компьютерлердин жана башка түзүлүштөрдүн өз ара аракеттенүү системасы. Бул тармактагы компьютерлерге байланышууга, чогуу иштөөгө жана принтерлер, файл серверлери жана Интернет сыяктуу жалпы ресурстарды колдонууга мүмкүндүк берет.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),

                const SizedBox(height: 3),
                const Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nТопология: ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            'Компьютердик тармактын топологиясы тармактын физикалык жана логикалык түзүлүшүн аныктайт. Кээ бир жалпы топологияларга жылдыз, автобус, шакек жана дарак структурасы кирет. Ар бир топологиянын өзүнүн артыкчылыктары жана кемчиликтери бар жана тармактын өзгөчө муктаждыктарына жараша тандалышы мүмкүн.',
                      ),
                      TextSpan(
                        text: '\nПротоколдор:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Компьютердик тармак протоколдору маалымат алмашууда түзмөктөр карманууга тийиш болгон эрежелерди жана форматтарды аныктайт. Кээ бир белгилүү протоколдор TCP/IP (Transmission Control Protocol/Internet Protocol), Ethernet, Wi-Fi, HTTP (Hypertext Transfer Protocol), FTP (File Transfer Protocol) жана башка көптөгөн нерселерди камтыйт. Протоколдор тармакта ишенимдүү жана натыйжалуу маалыматтарды берүүнү камсыз кылат.',
                      ),
                      TextSpan(
                        text: '\nТармактык жабдык:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Компьютер тармагын түзүү үчүн, белгилүү бир тармак жабдуулары талап кылынат. Бул роутерлерди, өчүргүчтөрдү, көпүрөлөрдү, Wi-Fi роутерлерди, тармак адаптерлерин жана кабелдик байланыштарды камтышы мүмкүн. Бул жабдуулар тармактагы түзмөктөр ортосунда байланышты жана маалыматтарды берүүнү камсыз кылат.',
                      ),
                      TextSpan(
                        text: '\nIP дареги:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Компьютер тармагындагы ар бир аппараттын өзүнүн уникалдуу IP дареги бар. IP даректөө тармактагы маалыматтарды аныктоого жана багыттоого мүмкүндүк берет. IP даректеринин эки версиясы бар - IPv4 жана IPv6. IPv4 даректери 192.168.0.1 сыяктуу чекиттер менен бөлүнгөн төрт сан катары көрсөтүлөт, ал эми IPv6 даректери 2001:0db8:85a3:0000:0000:8a2e:0370:7334 сыяктуу узунураак форматта көрсөтүлөт.',
                      ),
                      TextSpan(
                        text: '\nКоопсуздук:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Коопсуздук компьютердик тармактардын маанилүү аспектиси болуп саналат. Тармактык системалар вирустар, кесепеттүү программалар, хакердик чабуулдар жана тармактык интрузиялар сыяктуу ар кандай коркунучтарга алсыз болушу мүмкүн.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                ////////////

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
                                      ComputerdikTarmaktarTestPage(
                                    computerdikTarmaktar: computerdicTarmaktar,
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
