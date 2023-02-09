part of 'news_bloc.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

// Stat Loadingден башталат
class NewsLoading extends NewsState {}

// Датанын келген учуру
class NewsSuccess extends NewsState {
  const NewsSuccess(this.news);
  final List<News> news;
}

// Кандайдыр бир ошибка болсо
class NewsError extends NewsState {
  const NewsError(this.text);
  final String text;
}
