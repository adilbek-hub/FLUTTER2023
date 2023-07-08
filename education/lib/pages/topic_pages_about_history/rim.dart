import 'package:education/model/history_question.dart';
import 'package:education/pages/history_test/rim_imperiasy_test_page.dart';
import 'package:flutter/material.dart';

class Rim extends StatelessWidget {
  const Rim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Тарых'.toUpperCase()),
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
                  'Рим империясы',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Рим империясы - биздин заманга чейинки 27-жылдан бери жашап келе жаткан байыркы мамлекет. 476-жылга чейин Бул тарыхтагы эң маанилүү жана таасирдүү мамлекеттердин бири болгон.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Рим империясы биринчи Рим императору болуп, «Август» титулуна ээ болгон Октавиан Август менен башталган. Өзүнүн гүлдөп турган мезгилинде Рим империясы кеңири аймактарды, анын ичинде Европанын, Түндүк Африканын жана Жакынкы Чыгыштын бир бөлүгүн камтыган.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Империя жакшы уюшулган жана өнүккөн башкаруу системасы болгон. Ал жолдорду, акведуктарды, амфитеатрларды жана башка укмуштуудай архитектуралык курулуштарды курган. Рим империясы өзүнүн мыйзамдары, инфраструктурасы, инженердик жетишкендиктери жана маданий мурастары менен белгилүү болгон.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Рим империясынын аскердик күчү анын гүлдөп-өсүшүндө жана кеңейүүсүндө негизги ролду ойногон. Рим армиясы тарыхтагы эң тартиптүү жана уюшкан аскерлердин бири болгон жана ал жаңы аймактарды ийгиликтүү басып алып, империянын чек арасын кеңейткен.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Бирок Рим империясы өзүнүн жашоосунун акыркы кылымдарында ар кандай көйгөйлөргө туш болгон. Ички чыр-чатактар, саясий интригалар, экономикалык кыйынчылыктар жана варвар урууларынын чабуулдары империяны алсыраткан. Акыр-аягы, Рим империясынын батыш бөлүгү 476-жылы варварлар тарабынан басып алынган, бул Батышта Рим империясынын аяктаганын белгилеген.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Бирок Рим империясынын мураскору болгон Византия империясы чыгышта жашоосун улантып, 1453-жылга чейин анын борбору Константинополду Осмон империясы басып алганга чейин күчүндө болгон.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Рим империясы укук, саясат, архитектура, адабият жана маданият тармактарында олуттуу мурас калтырган. Анын «Рим укугу» деп аталган укук системасы азыркы европалык укуктун негизги негиздеринин бири болгон жана дүйнө жүзү боюнча көптөгөн укук системаларынын өнүгүшүнө таасирин тийгизген.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Рим архитектурасы Колизей, Пантеон, Рим форуму жана Каракалла мончолору сыяктуу улуу курулуштары менен белгилүү. Педиментти жана улуу мамычаларды таажы кылган арка сымал конструкцияларды колдонуу Рим архитектурасына мүнөздүү болуп, келечектеги доорлордун архитектурасына олуттуу таасирин тийгизген.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Рим доорунун адабияты да Батыш маданиятына маанилүү таасирин тийгизген. Цицерон, Вирджил, Овид, Тацит сыяктуу улуу Рим жазуучулары тарыхты, философияны, поэзияны жана риториканы изилдөө үчүн азыркыга чейин маанилүү болгон чыгармаларды жаратышкан.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Рим империясынын саясий уюму, анын ичинде «император» түшүнүгү жана провинцияларга бөлүнүшү келечектеги империяларга жана мамлекеттерге таасирин тийгизген. Римдиктер иштеп чыккан башкаруунун идеялары, жарандык принциптери жана салык салуу системалары узак мөөнөттүү мааниге ээ болгон.',
                  style: TextStyle(color: Colors.black),
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
                                      RimImperiasyTestPage(
                                    pimImperiasy: pimImperiasy,
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
