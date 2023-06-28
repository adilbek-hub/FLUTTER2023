import 'package:education/model/europe_suroo.dart';
import 'package:education/pages/europe_test_page.dart';
import 'package:flutter/material.dart';

class SistemalykProgrammalykKamsyzdoo extends StatelessWidget {
  const SistemalykProgrammalykKamsyzdoo({super.key});

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
                  'Системалык программалык камсыздоо',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Программалык камсыздоо (SW) – бул компьютер тутумун башкарган жана иштешин камсыз кылган программалардын, куралдардын жана маалыматтардын жыйындысы. Ал компьютерде тапшырмаларды аткаруу үчүн керектүү операциялык системаларды, тиркемелерди, драйверлерди, китепканаларды жана башка компоненттерди камтыйт. Бул жерде программалык камсыздоонун кээ бир негизги түрлөрү бар:',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),

                const Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nОперация системасы (OS): ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            'Операциялык система – бул компьютердин ресурстарын башкарган жана колдонуучу менен аппараттык камсыздоонун ортосундагы интерфейсти камсыз кылган негизги программалык камсыздоо. Мисал операциялык системаларга Windows, macOS, Linux, iOS жана Android кирет.',
                      ),
                      TextSpan(
                        text: '\nКолдонмо программалык камсыздоо:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Колдонмо программалык камсыздоо белгилүү бир тапшырмаларды аткарууга жана колдонуучунун керектөөлөрүн канааттандырууга арналган. Ал текст менен иштөө үчүн программаларды (тексттик редакторлор, тексттик процессорлор), таблицалар (электрондук жадыбал процессорлору), графика (графикалык редакторлор), мультимедиа, оюндар жана башка адистештирилген тиркемелерди камтыйт.',
                      ),
                      TextSpan(
                        text: '\nМаалымат базасы:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Берилиштер базасынын программалык камсыздоосу маалыматтарды түзүү, башкаруу жана иштетүү үчүн колдонулат. Ал маалымат базаларынан маалыматты сактоого, уюштурууга, иштетүүгө жана алууга мүмкүндүк берет. Мисал маалымат базасы программаларына MySQL, Oracle, Microsoft SQL Server кирет.',
                      ),
                      TextSpan(
                        text: '\nПрограммалык камсыздоону иштеп чыгуу:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Программалык камсыздоону иштеп чыгуу куралдары программисттерге программаларды түзүүгө жана сыноого жардам берет. Аларга интеграцияланган иштеп чыгуу чөйрөлөрү (IDE), компиляторлор, мүчүлүштүктөрдү оңдоочулар, версияларды башкаруу системалары жана башка программалык камсыздоону иштеп чыгуу куралдары кирет.',
                      ),
                      TextSpan(
                        text: '\nТармактык программалык камсыздоо:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Тармактык программалык камсыздоо компьютердик тармактарда байланышты жана маалымат алмашууну камсыз кылат. Ал маалыматтарды өткөрүү протоколдорун, тармактык мониторинг программаларын, серверлерди жана тармактык тиркемелер үчүн кардарларды камтыйт.',
                      ),
                      TextSpan(
                        text: '\nУтилиталар жана аспаптар:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Файлдарды кысуу, архивдөө, маалыматтардын камдык көчүрмөсүн сактоо, вирустарды сканерлөө, дефрагментациялоо сыяктуу атайын тапшырмаларды аткарууга арналган утилиталар жана куралдар.',
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
