import 'package:education/model/europe_suroo.dart';
import 'package:education/pages/europe_test_page.dart';
import 'package:flutter/material.dart';

class PersonalComputer extends StatelessWidget {
  const PersonalComputer({super.key});

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
                  'Персоналдык компьютер',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Персоналдык компьютер (ПК) – бул бир колдонуучу тарабынан жеке колдонууга арналган компьютер. Ал ар кандай тапшырмаларды аткаруу үчүн чогуу иштеген бир нече негизги компоненттерден турат. Бул жерде жеке компьютердин негизги компоненттери болуп саналат:',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),

                const SizedBox(height: 3),
                const Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nКорпус (компьютердик кейс): ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            'Корпус - бул компьютердин бардык компоненттерин камтыган жана коргогон физикалык кабык. Иште, адатта, клавиатура, чычкан, монитор жана башкалар сыяктуу ар кандай түзүлүштөрдү туташтыруу үчүн тешиктер бар.',
                      ),
                      TextSpan(
                        text: '\nНегизги плата:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Негизги плата (ошондой эле системалык такта деп да аталат) компьютердин калган компоненттерин камтыган негизги такта. Ал бардык башка компоненттердин ортосундагы байланышты жана байланышты камсыз кылат.',
                      ),
                      TextSpan(
                        text: '\nПроцессор (Борбордук процессор, CPU):',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Процессор компьютердин "мээси" болуп саналат жана эсептөө иштерин аткарууга жооптуу. Ал маалыматтарды иштеп чыгат, буйруктарды аткарат жана системанын жалпы иштешин камсыз кылат.',
                      ),
                      TextSpan(
                        text: '\nОперативдүү эс (RAM):',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' RAM процессор тарабынан активдүү колдонулган маалыматтарды жана нускамаларды убактылуу сактоо үчүн колдонулат. Бул маалыматтарга тез жетүүнү камсыз кылат жана системанын жалпы иштешине таасирин тийгизет.',
                      ),
                      TextSpan(
                        text: '\nКатуу диск (HDD)',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Solid State Drive (SSD): Катуу диск же SSD маалыматтарды туруктуу сактоо үчүн колдонулат. HDD адатта көбүрөөк кубаттуулукка жана арзаныраак баага ээ, ал эми SSD тезирээк окуу/жазуу ылдамдыгына жана жакшыртылган ишенимдүүлүгүнө ээ.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                ////////////

                const Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Видео карта (GPU, GPU):',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Видеокарта графиканы иштетүү жана монитордогу сүрөттү көрсөтүү үчүн жооптуу. Бул оюндар, графикалык тиркемелер жана жогорку сапаттагы видео көрүү үчүн өзгөчө маанилүү.',
                      ),
                      TextSpan(
                        text: '\nҮн картасы:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Үн картасы аудио сигналдарды иштетүүгө жана динамиктер же гарнитуралар аркылуу үндү ойнотуу үчүн жооп берет',
                      ),
                    ],
                  ),
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
