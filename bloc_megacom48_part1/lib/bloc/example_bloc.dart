import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleInitial()) {
    on<PrintEvent>((event, emit) async {
      //emit - как только наступил PrintEvent, первым делом  мы должны UI отправить состояния загрузки.
      emit(ExampleLoading());
      await Future.delayed(const Duration(seconds: 3));
      final String izmenonniyData = '${event.data}Added to Event';
      print(event.data);
      print(izmenonniyData);
      emit(ExampleSuccess(returnedData: izmenonniyData));
    });
  }
}
