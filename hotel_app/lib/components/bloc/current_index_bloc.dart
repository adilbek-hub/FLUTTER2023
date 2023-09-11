import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'current_index_event.dart';
part 'current_index_state.dart';

class CaruselBloc extends Bloc<CaruselEvent, CaruselState> {
  CaruselBloc() : super(CaruselError()) {
    @override
    Stream<CaruselState> mapEventToState(CaruselEvent event) async* {
      if (event is LoadCarouselIndex) {
        const int currentIndex = 0;
        yield const CaruselLoaded(currentIndex);
      }
    }
  }
}
