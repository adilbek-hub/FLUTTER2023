import 'package:cached_network_image/cached_network_image.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:education/pages/geography_test/usa_test_page.dart';
import 'package:flutter/material.dart';
import '../../model/geography_model.dart';

class UnitedStates extends StatelessWidget {
  const UnitedStates({super.key, required this.geographyTopicsModel});
  final List<GeographyTopicsModel> geographyTopicsModel;

  @override
  Widget build(BuildContext context) {
    final usa = geographyTopicsModel[1].usa;
    final tema = geographyTopicsModel[1].usa![1].tema;
    final usaStates = geographyTopicsModel[1].usa![1].usaStates;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(usa![0].title ?? ''),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(children: [
          DropCapText(
            usa[0].tema,
            dropCap: DropCap(
              width: 130,
              height: 130,
              child: CachedNetworkImage(
                imageUrl: "${usa[0].image}",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            tema,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Table(
            textDirection: TextDirection.rtl,
            defaultVerticalAlignment: TableCellVerticalAlignment.top,
            border: TableBorder.all(width: 0.2, color: Colors.black),
            children: [
              TableRow(children: [
                Text(
                  usaStates![0].adminCountry,
                  textScaleFactor: 1,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Text(
                  usaStates[0].population,
                  textScaleFactor: 1,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Text(
                  usaStates[0].state,
                  textScaleFactor: 1,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ]),
              TableRow(children: [
                Text(usaStates[1].adminCountry, textScaleFactor: 1),
                Text(usaStates[1].population, textScaleFactor: 1),
                Text(usaStates[1].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[2].adminCountry, textScaleFactor: 1),
                Text(usaStates[2].population, textScaleFactor: 1),
                Text(usaStates[2].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[3].adminCountry, textScaleFactor: 1),
                Text(usaStates[3].population, textScaleFactor: 1),
                Text(usaStates[3].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[4].adminCountry, textScaleFactor: 1),
                Text(usaStates[4].population, textScaleFactor: 1),
                Text(usaStates[4].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[5].adminCountry, textScaleFactor: 1),
                Text(usaStates[5].population, textScaleFactor: 1),
                Text(usaStates[5].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[6].adminCountry, textScaleFactor: 1),
                Text(usaStates[6].population, textScaleFactor: 1),
                Text(usaStates[6].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[7].adminCountry, textScaleFactor: 1),
                Text(usaStates[7].population, textScaleFactor: 1),
                Text(usaStates[7].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[8].adminCountry, textScaleFactor: 1),
                Text(usaStates[8].population, textScaleFactor: 1),
                Text(usaStates[8].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[9].adminCountry, textScaleFactor: 1),
                Text(usaStates[9].population, textScaleFactor: 1),
                Text(usaStates[9].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[10].adminCountry, textScaleFactor: 1),
                Text(usaStates[10].population, textScaleFactor: 1),
                Text(usaStates[10].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[11].adminCountry, textScaleFactor: 1),
                Text(usaStates[11].population, textScaleFactor: 1),
                Text(usaStates[11].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[12].adminCountry, textScaleFactor: 1),
                Text(usaStates[12].population, textScaleFactor: 1),
                Text(usaStates[12].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[13].adminCountry, textScaleFactor: 1),
                Text(usaStates[13].population, textScaleFactor: 1),
                Text(usaStates[13].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[14].adminCountry, textScaleFactor: 1),
                Text(usaStates[14].population, textScaleFactor: 1),
                Text(usaStates[14].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[15].adminCountry, textScaleFactor: 1),
                Text(usaStates[15].population, textScaleFactor: 1),
                Text(usaStates[15].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[16].adminCountry, textScaleFactor: 1),
                Text(usaStates[16].population, textScaleFactor: 1),
                Text(usaStates[16].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[17].adminCountry, textScaleFactor: 1),
                Text(usaStates[17].population, textScaleFactor: 1),
                Text(usaStates[17].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[18].adminCountry, textScaleFactor: 1),
                Text(usaStates[18].population, textScaleFactor: 1),
                Text(usaStates[18].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[19].adminCountry, textScaleFactor: 1),
                Text(usaStates[19].population, textScaleFactor: 1),
                Text(usaStates[19].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[20].adminCountry, textScaleFactor: 1),
                Text(usaStates[20].population, textScaleFactor: 1),
                Text(usaStates[20].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[21].adminCountry, textScaleFactor: 1),
                Text(usaStates[21].population, textScaleFactor: 1),
                Text(usaStates[21].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[22].adminCountry, textScaleFactor: 1),
                Text(usaStates[22].population, textScaleFactor: 1),
                Text(usaStates[22].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[23].adminCountry, textScaleFactor: 1),
                Text(usaStates[23].population, textScaleFactor: 1),
                Text(usaStates[23].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[24].adminCountry, textScaleFactor: 1),
                Text(usaStates[24].population, textScaleFactor: 1),
                Text(usaStates[24].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[25].adminCountry, textScaleFactor: 1),
                Text(usaStates[25].population, textScaleFactor: 1),
                Text(usaStates[25].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[26].adminCountry, textScaleFactor: 1),
                Text(usaStates[26].population, textScaleFactor: 1),
                Text(usaStates[26].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[27].adminCountry, textScaleFactor: 1),
                Text(usaStates[27].population, textScaleFactor: 1),
                Text(usaStates[27].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[28].adminCountry, textScaleFactor: 1),
                Text(usaStates[28].population, textScaleFactor: 1),
                Text(usaStates[28].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[29].adminCountry, textScaleFactor: 1),
                Text(usaStates[29].population, textScaleFactor: 1),
                Text(usaStates[29].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[30].adminCountry, textScaleFactor: 1),
                Text(usaStates[30].population, textScaleFactor: 1),
                Text(usaStates[30].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[31].adminCountry, textScaleFactor: 1),
                Text(usaStates[31].population, textScaleFactor: 1),
                Text(usaStates[31].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[32].adminCountry, textScaleFactor: 1),
                Text(usaStates[32].population, textScaleFactor: 1),
                Text(usaStates[32].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[33].adminCountry, textScaleFactor: 1),
                Text(usaStates[33].population, textScaleFactor: 1),
                Text(usaStates[33].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[34].adminCountry, textScaleFactor: 1),
                Text(usaStates[34].population, textScaleFactor: 1),
                Text(usaStates[34].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[35].adminCountry, textScaleFactor: 1),
                Text(usaStates[35].population, textScaleFactor: 1),
                Text(usaStates[35].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[36].adminCountry, textScaleFactor: 1),
                Text(usaStates[36].population, textScaleFactor: 1),
                Text(usaStates[36].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[37].adminCountry, textScaleFactor: 1),
                Text(usaStates[37].population, textScaleFactor: 1),
                Text(usaStates[37].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[38].adminCountry, textScaleFactor: 1),
                Text(usaStates[38].population, textScaleFactor: 1),
                Text(usaStates[38].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[39].adminCountry, textScaleFactor: 1),
                Text(usaStates[39].population, textScaleFactor: 1),
                Text(usaStates[39].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[40].adminCountry, textScaleFactor: 1),
                Text(usaStates[40].population, textScaleFactor: 1),
                Text(usaStates[40].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[41].adminCountry, textScaleFactor: 1),
                Text(usaStates[41].population, textScaleFactor: 1),
                Text(usaStates[41].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[42].adminCountry, textScaleFactor: 1),
                Text(usaStates[42].population, textScaleFactor: 1),
                Text(usaStates[42].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[43].adminCountry, textScaleFactor: 1),
                Text(usaStates[43].population, textScaleFactor: 1),
                Text(usaStates[43].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[44].adminCountry, textScaleFactor: 1),
                Text(usaStates[44].population, textScaleFactor: 1),
                Text(usaStates[44].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[45].adminCountry, textScaleFactor: 1),
                Text(usaStates[45].population, textScaleFactor: 1),
                Text(usaStates[45].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[46].adminCountry, textScaleFactor: 1),
                Text(usaStates[46].population, textScaleFactor: 1),
                Text(usaStates[46].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[47].adminCountry, textScaleFactor: 1),
                Text(usaStates[47].population, textScaleFactor: 1),
                Text(usaStates[47].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[48].adminCountry, textScaleFactor: 1),
                Text(usaStates[48].population, textScaleFactor: 1),
                Text(usaStates[48].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[49].adminCountry, textScaleFactor: 1),
                Text(usaStates[49].population, textScaleFactor: 1),
                Text(usaStates[49].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[50].adminCountry, textScaleFactor: 1),
                Text(usaStates[50].population, textScaleFactor: 1),
                Text(usaStates[50].state, textScaleFactor: 1),
              ]),
              TableRow(children: [
                Text(usaStates[51].adminCountry, textScaleFactor: 1),
                Text(usaStates[51].population, textScaleFactor: 1),
                Text(usaStates[51].state, textScaleFactor: 1),
              ]),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            usa[2].tema,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            usa[2].text ?? '',
          ),
          const SizedBox(height: 10),
          Text(
            usa[3].tema,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          DropCapText(
            usa[3].text ?? '',
            dropCap: DropCap(
              width: 130,
              height: 130,
              child: CachedNetworkImage(
                imageUrl: "${usa[3].image}",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            usa[4].tema,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            usa[4].text ?? '',
          ),
          const SizedBox(height: 10),
          Text(
            usa[5].tema,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            usa[5].text ?? '',
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
                            builder: (BuildContext context) =>
                                const UsaTestPage(),
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
          const SizedBox(height: 5),
        ]),
      ),
    );
  }
}
