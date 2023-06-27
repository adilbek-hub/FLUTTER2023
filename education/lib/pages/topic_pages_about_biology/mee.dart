import 'package:education/model/europe_suroo.dart';
import 'package:education/pages/europe_test_page.dart';
import 'package:flutter/material.dart';

class Mee extends StatelessWidget {
  const Mee({super.key});

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
                  'Мээ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Мээ адамдардын жана башка көптөгөн жаныбарлардын борбордук нерв системасынын эң татаал жана маанилүү органы болуп саналат. Ал маалыматты иштеп чыгуу, жүрүм-турумун көзөмөлдөө, кыймылды координациялоо жана дененин маанилүү функцияларын колдоо менен байланышкан көптөгөн функцияларды аткарат. Бул жерде мээнин кээ бир негизги аспектилери болуп саналат:',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                const Text(
                  '1.Мээ анатомиясы:',
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
                        text: 'Баш мээ: ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            'Бул эки жарым шардан турган мээнин эң чоң бөлүгү. Ар бир жарым шар ар кандай функцияларды аткаруу үчүн адистештирилген бир нече маңдай, убактылуу, париеталдык жана желке бөлүктөргө бөлүнөт.',
                      ),
                      TextSpan(
                        text: '\nМээче:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Ал мээнин арткы бөлүгүндө жайгашкан жана координация, тең салмактуулук жана булчуңдарды башкаруу үчүн жооптуу.',
                      ),
                      TextSpan(
                        text: '\nОртоңку мээ:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Аң-сезимди, сергектикти жана стимулдарды баамдоону жөнгө салууда роль ойногон торчо формацияны камтыйт.',
                      ),
                      TextSpan(
                        text: '\nАралык мээ:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Гипоталамус жана таламус кирет, алар ички органдарды, эмоцияларды жана ар кандай дүүлүктүрүүчүлөргө реакцияларды жөнгө салууга катышат.',
                      ),
                      TextSpan(
                        text: '\nАрткы мээ:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Мээ менен жүлүндүн ортосунда сигналдарды өткөрүүдө, ошондой эле дем алуу жана жүрөктүн согушу сыяктуу негизги маанилүү функцияларды башкарууда роль ойногон medulla oblongata жана pons кирет.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                ////////////
                const SizedBox(height: 10),
                const Text(
                  '2.Мээнин функциялары:',
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
                        text: 'Когнитивдик функциялар:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Мээ маалыматты иштетүү, эс тутум, ой жүгүртүү, кабылдоо, сүйлөө жана маселелерди чечүү үчүн жооптуу.',
                      ),
                      TextSpan(
                        text: '\nКыймылды башкаруу:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Мээ ылдамдык, күч жана тактык сыяктуу ар кандай кыймылдарды аткаруу үчүн булчуңдарды координациялайт жана башкарат.',
                      ),
                      TextSpan(
                        text: '\nОрганды жөнгө салуу:',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            ' Эмоциялар жана жүрүм-турум: Мээ бир нече механизмдер аркылуу эмоцияларды жөнгө салууга жана жүрүм-турумду калыптандырууга катышат.',
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
