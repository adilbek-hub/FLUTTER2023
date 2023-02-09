part of 'news_bloc.dart';

abstract class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  List<Object> get props => [];
}

//1.Ушул Event менен өлкөлөрдүн аталыштарын тандайбыз.
// 2.Фукцияга чакырылган параметрлер через Event аркылуу берилет. Жана ошол параметрлер класска конструкцияланат
// жана сыртка чакырууда класс менен чыгат.
// Eventтин мааниси бул буйрук, сен ук дегенди билдирет.
class NewsByCountryCodeEvent extends NewsEvent {
  const NewsByCountryCodeEvent([this.countryCode = "us"]);
  final String countryCode;
}
