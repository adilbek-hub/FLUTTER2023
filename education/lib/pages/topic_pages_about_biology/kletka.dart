import 'package:education/model/biology_question.dart';
import 'package:education/model/europe_suroo.dart';
import 'package:education/pages/biology_test/kletka_test_page.dart';
import 'package:education/pages/europe_test_page.dart';
import 'package:flutter/material.dart';

class Kletka extends StatelessWidget {
  const Kletka({super.key});

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
                  'Клетка',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Биологияда «клетка» термини тирүү организмдердин негизги структуралык жана функциялык бирдигин билдирет. Клетка бүт жандыктардын негизги курулуш материалы болуп саналат жана көптөгөн маанилүү кызматтарды аткарат. Бул жерде биологияда клетканын кээ бир негизги аспектилери болуп төмөндө көрсөтүлөт:',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                const Text(
                  '1. Клетканын түзүлүшү:',
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
                        text:
                            '• Мембрана: клетканы курчап турган жана аны сырткы чөйрөдөн бөлүп турган жука кабыкча. Ал клетка менен айлана-чөйрөнүн ортосундагы заттардын жана маалыматтын агымын көзөмөлдөйт.',
                      ),
                      TextSpan(
                        text:
                            '\n• Цитоплазма: Гелеподобное вещество внутри клетки, заполняющее пространство между ядром и клеточной мембраной. В ней располагаются различные органеллы и молекулы. ',
                      ),
                      TextSpan(
                        text:
                            '\n• Ядро: ДНК түрүндөгү генетикалык маалыматты камтыган клетканын башкаруу борбору. Ядро клетканын функцияларын башкарат жана клетканын бөлүнүшү учурунда генетикалык маалыматты өткөрөт.',
                      ),
                      TextSpan(
                        text:
                            '\n• Органеллалар: Цитоплазманын ичинде митохондрия (энергия өндүрүү үчүн жооптуу), эндоплазмалык ретикулум (белок синтезине катышат) жана Гольджи (молекулаларды иштетүү жана таңгактоо үчүн жооптуу) сыяктуу ар кандай адистештирилген органеллалар бар.',
                      ),
                      TextSpan(
                        text:
                            '\n• Органеллалар: Цитоплазманын ичинде митохондрия (энергия өндүрүү үчүн жооптуу), эндоплазмалык ретикулум (белок синтезине катышат) жана Гольджи (молекулаларды иштетүү жана таңгактоо үчүн жооптуу) сыяктуу ар кандай адистештирилген органеллалар бар.',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                ////////////
                const SizedBox(height: 10),
                const Text(
                  '2. Клетка функциялары:',
                  style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.start,
                ),
                const Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            '\n• Көбөйүү: Клеткалар бөлүнүү жолу менен көбөйүп, эки кыз клетканы пайда кылышат. Бул процесс митоз деп аталат жана организмдердин өсүп-өнүгүшүнүн негизи болуп саналат.',
                      ),
                      TextSpan(
                        text:
                            '\n• Метаболизм: Клеткалар айлана-чөйрө менен метаболизмди ишке ашырат, аш болумдуу заттарды соруп, зат алмашуунун калдыктарын сыртка чыгарышат.',
                      ),
                      TextSpan(
                        text:
                            '\n• Энергия өндүрүшү: кээ бир клеткалык органеллдер, мисалы, митохондриялар, клетка функцияларын аткаруу үчүн керектүү энергияны өндүрүшөт.',
                      ),
                      TextSpan(
                        text:
                            '\n• Протеин синтези: Клеткалар организмдин түзүлүшүндө жана иштешинде маанилүү роль ойногон ар кандай белокторду синтездейт.',
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
                                      KletkaJonundoTushunukTestPage(
                                    kletka: kletka,
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
