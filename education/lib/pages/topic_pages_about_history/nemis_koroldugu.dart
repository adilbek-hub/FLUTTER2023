import 'package:flutter/material.dart';

import 'package:education/model/history_model.dart';
import 'package:education/model/history_question.dart';
import 'package:education/pages/history_test/nemis_koroldugu_test_page.dart';

class NemisKoroldugu extends StatelessWidget {
  const NemisKoroldugu({Key? key, required this.historyTopicsModel})
      : super(key: key);
  final List<HistoryTopicsModel> historyTopicsModel;

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
                Text(
                  historyTopicsModel[0].aboutGermans![0].title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  historyTopicsModel[0].aboutGermans![0].description,
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                // const Text(
                //   '5-10-кылымдарда Германия көптөгөн майда мамлекеттерге, анын ичинде франк, саксон, тюринг, алеман жана башка урууларга бөлүнгөн. Алардын өз башкаруучулары жана герцог жана графтар сыяктуу башкаруу формалары болгон. Бул мамлекеттер аймактык артыкчылык жана саясий таасир үчүн бири-бири менен тынымсыз кагылышууларды жана согуштарды жүргүзүп турушкан.',
                //   style: TextStyle(color: Colors.black),
                //   textAlign: TextAlign.justify,
                // ),
                // const Text(
                //   'Бирок, IX-кылымда саксон падышаларынын династиясы пайда болгондугун белгилей кетүү маанилүү, ал кандайдыр бир деңгээлде германдык биримдикке жана борборлоштурууга жетише алган. Бул династиянын эң атактуу падышаларынын бири 10-кылымда Ыйык Рим императорунун таажысын кийген Отто I болгон. Бул окуя Германиянын тарыхы үчүн чоң мааниге ээ болгон, анткени Германиянын падышалыгы азыр Борбордук жана Батыш Европанын көпчүлүк бөлүгүн камтыган кубаттуу империянын курамына кирген.',
                //   style: TextStyle(color: Colors.black),
                //   textAlign: TextAlign.justify,
                // ),
                // const Text(
                //   'Бул мезгилде Германиянын королдугу да маданий жана интеллектуалдык өнүгүүнүн борбору болуп калды. Көптөгөн монастырлар түптөлүп, аларда билим, искусство жана адабият өнүккөн. Майнцтагы монастырь жазуу жана маданият түзүлгөн жана жайылтылган өзгөчө маанилүү борбор болуп калды.',
                //   style: TextStyle(color: Colors.black),
                //   textAlign: TextAlign.justify,
                // ),
                // const Text(
                //   'Ошентип, V-X-кылымдарда герман падышалыгы бытыранды жана көп кырдуу мамлекет болгон, анын ичинде ар кандай герман уруулары жана варвар уруулары болгон. Бул бийлик, аймак жана ресурстар үчүн ар кандай мамлекеттер менен уруулардын ортосунда тынымсыз кагылышуулардын жана согуштардын мезгили болгон.',
                //   style: TextStyle(color: Colors.black),
                //   textAlign: TextAlign.justify,
                // ),
                // const Text(
                //   'Бирок, чачыранды болгонуна карабастан, Германия падышалыгы өзүнүн маданий жана социалдык өзгөчөлүктөрүнө ээ болгон. Герман урууларынын өз каада-салттары, үрп-адаттары жана тилдери болгон. Варвар урууларынын маданияты бир топ примитивдүү болуп, аскер өнөрүнө, аңчылыкка жана койчулукка негизделген. Алар көптөгөн кудайларга ишенип, ар кандай ырым-жырымдарды, ырым-жырымдарды жасашкан.',
                //   style: TextStyle(color: Colors.black),
                //   textAlign: TextAlign.justify,
                // ),
                // const Text(
                //   'Убакыттын өтүшү менен христиандыктын таасири Германиянын падышачылыгына кире баштаган. Ыйык Бонифас сыяктуу миссионерлер герман урууларынын арасында христиан динин жайылтуу үчүн бул жерлерге келишкен. Бул христиандыктын акырындык менен кабыл алынышына жана Германияда христиан маданиятынын жана чиркөөсүнүн калыптанышына алып келген.',
                //   style: TextStyle(color: Colors.black),
                //   textAlign: TextAlign.justify,
                // ),
                // const Text(
                //   'Германия королдугунун тарыхындагы маанилүү окуя 10-кылымда биринчи Ыйык Рим императору болгон Оттон I башкаруусу астында биригүү болгон. Бул окуя Германия королдугунун башкаруунун императордук формасына өткөнүн белгилеп, Германияны Борбордук жана Батыш Европадагы алдыңкы держава катары негиздеген.',
                //   style: TextStyle(color: Colors.black),
                //   textAlign: TextAlign.justify,
                // ),
                // const Text(
                //   'Бирок, саясий жана маданий ишмердүүлүк менен бирге Италия да ички кагылышуулардан, согуштардан жана кол салуулардан жапа чеккен. Шаарлар менен мамлекеттердин ортосундагы тынымсыз чыр-чатактар, чет элдик аскерлердин жана баскындардын таасири аймактын биримдигин жана туруктуулугун алсыраткан.',
                //   style: TextStyle(color: Colors.black),
                //   textAlign: TextAlign.justify,
                // ),
                // const Text(
                //   'Ошентип, V-X-кылымдардагы Германия падышалыгы саясий бытырандылык доору болгон менен бирге Германиянын маданиятына жана тарыхына олуттуу таасирин тийгизген. Улуу Германиянын падышалары жана императорлору тарыхта из калтырышкан жана алардын таасири бүгүнкү күнгө чейин уланууда.',
                //   style: TextStyle(color: Colors.black),
                //   textAlign: TextAlign.justify,
                // ),
                const SizedBox(height: 10),
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
                                  builder: (BuildContext context) =>
                                      NemisKorolduguTestPage(
                                    germania: germania,
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
