import 'package:education/model/europe_suroo.dart';
import 'package:education/pages/europe_test_page.dart';
import 'package:flutter/material.dart';

class ComputerFunksialary extends StatelessWidget {
  const ComputerFunksialary({super.key});

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
                  'Байыркы немистер',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Байыркы немистер биздин заманга чейинки 2-миң жылдыкта Түндүк Европада жашаган уруулардын жана элдердин тобу болгон. 5-кылымына чейин Алар индоевропа элдеринин чоң тобуна кирген жана готтар, франктар, саксондор жана бурчтар сыяктуу башка герман уруулары менен тууган болгон.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Байыркы немистер ар кандай аймактарда, анын ичинде азыркы Германияда, Голландияда, Данияда, Швецияда, Норвегияда жашашкан. Алардын жашоо образы, маданияты жаратылыш жана аскердик жашоо образы менен тыгыз байланышта болгон.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Алар согушчан элдер катары белгилүү болгон жана көп учурда башка уруулар жана Рим империясы менен кагылышууларга катышкан. Римдиктер менен болгон белгилүү жолугушуулардын кээ бирлери Тевтобург токоюндагы салгылашууну (б.з. 9) камтыйт, анда немис лидери Арминиус Рим генералы Публий Квинтилий Варусту жеңип, Римдин Германияны басып алышына жол бербейт.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Байыркы немистерде уруучулук түзүлүштүн өнүккөн системасы болгон, мында ар бир уруунун өзүнүн лидери жана өзүнүн коомдук-саясий түзүлүшү болгон. Алар майда конуштарда жашап, экономикасы негизинен дыйканчылыкка, малчылыкка жана кол өнөрчүлүккө негизделген.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Маданий жактан немистер жаратылыштын жана жашоонун ар кандай аспектилерин чагылдырган ар кандай кудайларга ишенишкен. Алардын диний ишенимдери, ырым-жырымдары жаратылыш кубулуштары жана ата-бабаларга сыйынуу менен тыгыз байланышта болгон.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Биздин замандын v-кылымында. Батыш Рим империясынын аймагына герман уруулары кол сала баштаган, бул империянын кулашына жана Европада орто кылымдын башталышына алып келген. Кээ бир герман уруулары, мисалы, франктар мурдагы Рим империясынын аймагында өз мамлекеттерин түзө башташкан.Жаңы мамлекеттердин жана коомдук түзүлүштөрдүн түзүлүшүндө герман уруулары, өзгөчө франктар маанилүү роль ойногон. Франктар күчтүү герцогдукту, андан кийин падышалыкты түзүп, Каролинг династиясынын жана акыры Ыйык Рим империясынын пайда болушуна негиз болгон.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Белгилей кетчү нерсе, герман уруулары да жаңы түзүлгөн мамлекеттерге өздөрүнүн маданий салымдарын алып келишкен. Бул тил, мыйзам системасы, коомдук үрп-адаттар жана динди камтыйт. Кошумчалай кетсек, немис лидерлери жана элиталары жаңы мамлекеттик структуралардын бир бөлүгү болуп, бул мамлекеттердин саясий жана маданий өзгөчөлүгүн калыптандырууда маанилүү роль ойношкон.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Орто кылымдын кийинки мезгилдеринде герман уруулары да рыцарлык маданияттын калыптанышында жана крест жортуулдарына катышууда роль ойногон. Алардын таасири Түндүк Европанын чегинен да ашып кеткен.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Бугунку күндө герман элдери Германиянын жана Европанын башка өлкөлөрүнүн улуттук-этникалык түзүлүшүнүн негизин түзөт. Герман тили, маданияты жана үрп-адаттары байыркы немистердин тарыхында терең тамырлашкан.',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Ошентип, байыркы немистер Европанын тарыхында маанилүү роль ойноп, түрдүү коомдордун жана мамлекеттердин саясий, социалдык, маданий жана диний аспектилерине таасирин тийгизген. Алардын согуштук духу, уруулук уюмдашуусу жана маданий салттары азыркы Европа коомунун тарыхында жана калыптанышында өзүнүн изин калтырган.',
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
