import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_with_bloc/models/news_model.dart';
import 'package:news_app_with_bloc/service/news_service.dart';

part 'news_event.dart';
part 'news_state.dart';

//NewsBloc NewsState menen ishteyt
// Блоkтун ичиндеги функция через NewsEvent аркылуу чакырылат.
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this.service) : super(NewsLoading()) {
    on<NewsEvent>((event, emit) {});
    // _getNewsByCountry функцияны бүтүргөндөн кийин иштетебиз.
    on<NewsByCountryCodeEvent>(_getNewsByCountry);
  }
  final NewsService service;
  Future<void> _getNewsByCountry(NewsByCountryCodeEvent event,
      /*stateти алмаштырыш үчүн Emitter */ Emitter<NewsState> emit) async {
    // Сервистеги getNewsByCountry функциясын жана анын ичиндеги countryCode у менен кошо алдык. Бул
    //функциядагы параметр через Event аркылуу алынып келинди.
    if (state is! NewsLoading) emit(NewsLoading());
    final news = await service.getNewsByCountry(event.countryCode);
    if (news != null) {
      // анда абал NewsSuccess ке которулсун.
      emit(NewsSuccess(news));
    } else {
      emit(const NewsError('ERRO'));
    }
  }
}
