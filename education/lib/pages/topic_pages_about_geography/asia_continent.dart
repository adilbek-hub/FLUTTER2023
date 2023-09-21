import 'package:education/model/asia_suroo.dart';

import 'package:education/pages/geography_test/asia_test_page.dart';

import 'package:flutter/material.dart';

import '../../model/geography_model.dart';

class AsiaContinenti extends StatelessWidget {
  const AsiaContinenti({super.key, required this.geographyTopicsModel});
  final List<GeographyTopicsModel> geographyTopicsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Азия Континенти'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const Text(
              'Азия Континенти',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Азиянын географиясы',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.start,
            ),
            const Text(
              'Азия - жер бетиндеги эң чоң континент. Анын жалпы аянты 43,4 миллион чарчы метрден ашык. км (бул жердин аймагынын 30% түзөт). Азия Евразия жарым аралынын бир бөлүгү болуп эсептелет. Батышта Азиянын чек арасы Урал тоолору менен өтөт. Түндүгүнөн Азияны Түндүк Муз океанынын суулары, чыгышынан Тынч океан (Чыгыш Кытай, Беринг, Охотск, Түштүк Кытай, Япония жана Сары деңиздер), түштүгүнөн Инди океанынын суулары жууйт. (Араб деңизи). Мындан тышкары, Азиянын жээктерин Кызыл жана Жер Ортолук деңиздеринин суулары да жууйт. Азия кең аймакты ээлегендиктен, бул континенттин климаты абдан ар түрдүү экени анык. Батыш жана Чыгыш Сибирде климаты континенттик, Борбордук жана Борбордук Азияда – чөл жана жарым чөл, Чыгыш, Түштүк жана Түштүк-Чыгыш Азияда – муссондук (муссондук мезгил – июнь-октябрь), кээ бир райондордо экватордук, ал эми алыскы түндүк - арктика. Азия дарыяларынын ичинен, албетте, Янцзы (6300 км), Хуанхэ дарыясы (5464 км), Обь (5410 км), Меконг (4500 км), Амур (4440 км), Лена дарыяларын аташ керек. (4400) жана Енисей (4092 км). ). Азиядагы эң чоң беш көлгө төмөнкүлөр кирет: Арал деңизи, Байкал, Балхаш, Тоңле Сап жана Ысык-Көл. Азиянын көп бөлүгүн тоолор түзөт. Дал ушул Азияда Гималай, Памир, Гиндукуш, Алтай жана Саян тоолору жайгашкан. Азиядагы эң чоң тоо Эверест (Чомолунгма), бийиктиги 8848 метр. Азиядагы саякатчыларды көптөгөн чөлдөр күтүп жатышат, алардын ичинен Гоби, Такла-Макан, Каракум жана Араб жарым аралынын чөлдөрүн бөлүп көрсөтүү керек. Жалпысынан Азияда 20дан ашык чөл бар.',
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            const Text(
              'Азия калкы',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 5),
            Image.asset(
              'assets/images/asia_continenti/azija.jpg',
            ),
            const SizedBox(height: 5),
            const Text(
              'Учурда Азиянын калкынын саны 4,3 миллиард адамдан ашты. Бул Жердин жалпы калкынын 60% түзөт. Ошол эле учурда Азияда калктын жылдык өсүшү болжол менен 2% түзөт. Азиянын дээрлик бүт калкы монголоид расасына кирет, ал өз кезегинде майда расалар – Түндүк Азия, Арктика, Түштүк Азия жана Ыраакы Чыгышка бөлүнөт. Иракта, Ирандын түштүгүндө жана Индиянын түндүгүндө индо-жер ортолук деңиздик расалар басымдуулук кылат. Мындан тышкары, Азияда кавказ жана негроид сыяктуу башка көптөгөн расалар бар.',
            ),
            const SizedBox(height: 5),
            const Text(
              'Азия өлкөлөрү',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 5),
            const Text(
              'Азиянын аймагында 55 мамлекет толук же жарым-жартылай (анын ичинен 5 таанылбаган республикалар деп аталган) жайгашкан. Азиянын эң чоң өлкөсү – Кытай (анын аймагы 9 596 960 чарчы км), эң кичинеси – Мальдив аралдары (300 чарчы км). Калкынын саны боюнча Кытай (1,39 миллиард адам) дүйнөдөгү бардык мамлекеттерден алдыда. Башка Азия өлкөлөрүнүн калкы азыраак: Индияда 1,1 миллиард, Индонезияда 230 миллион жана Бангладеште 134 миллион.',
            ),
            const Text(
              'Азиянын аймактары',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 5),
            Image.asset('assets/images/asia_continenti/azija1.jpg'),
            const SizedBox(height: 5),
            const Text(
              'Азиянын аймагы ушунчалык чоң болгондуктан, саясатчылар, журналисттер же окумуштуулар аны кээде Жакынкы Чыгыш, Батыш Азия жана Ыраакы Чыгыш деп бөлүшөт. Бирок, географиялык жактан Азия туура 5 аймакка бөлүнөт:',
            ),
            const SizedBox(height: 5),
            SizedBox(
              height: 100,
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
                              builder: (BuildContext context) => AsiaTestPage(
                                asiaSuroo: asiaSuroo,
                              ),
                            ),
                          );
                        },
                        child: const Text('ТЕСТ'),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
