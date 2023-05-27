import 'package:coin_app/repositories/cripto_coins/models/cripto_coin.dart';
import 'package:dio/dio.dart';

class CriptoCoinRepositories {
  Future<List<CriptoCoin>> getCoinsList() async {
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,AVAX,SOL,AID,CAG,DOV&tsyms=USD');

    final data = response.data as Map<String, dynamic>;
    final dataRow = data['RAW'] as Map<String, dynamic>;
    final criptoCoinList = dataRow.entries.map((e) {
      final usdData =
          (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final price = usdData['PRICE'];
      final imageUrl = usdData['IMAGEURL'];
      return CriptoCoin(
        name: e.key,
        priceInUSD: price,
        imageUrl: 'https://www.cryptocompare.com/$imageUrl',
      );
    }).toList();
    return criptoCoinList;
  }
}




/*
class CriptoCoinRepositories {
  Future<List<CriptoCoin>> getCoinsList() async {
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC&tsyms=USD,EUR');
    // Сделаем переменную data /  внутри data будет Стринг и Дайнемик /
    //Теперь дату нужно перенести к криптокоину
    final data = response.data as Map<String, dynamic>;
    // Для этого создаем еще переменную dataList / и мы перевести нашу Мапу к Списку,
    //Для этого мы поле дату вызываем поля entries, Оно вернет нам список всех на чистей словарях /
    //Биз бул тизмени map ыкмасы менен иштетебиз / map бүт тизмени кайталайт жана маалыматтар менен бир нерсе кылат.
    // жана бул жерде биз ар бир маанини криптокоинге которобуз.
    //CriptoCoinдин nameине map ыкманын ключун которобуз анткени анын ключу биздин криптовалютабызда бар.
    // priceInUSDга датанын обектисинин ичине ылайык Map колдонобуз.['USD'] конструкциясы e.value объектинин ичиндеги
    // мааниге 'USD' ачкычы менен кайрылуунун бир жолу.
    // Жана биз Листке айландырабыз ToList(),
    // criptoCoinsList ти кайтарабыз
    final criptoCoinsList = data.entries
        .map(
          (e) => CriptoCoin(
            name: e.key,
            priceInUSD: (e.value as Map<String, dynamic>)['USD'],
          ),
        )
        .toList();
    //Жана биз бул списокту колдонууга өзүбүз каалаган жерге кайтарабыз => (Негизги бетке)
    return criptoCoinsList;
  }
}
*/