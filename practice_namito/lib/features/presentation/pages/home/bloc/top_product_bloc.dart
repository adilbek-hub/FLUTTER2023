import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:practice_namito/features/data/model/top_products.dart';
import 'package:practice_namito/features/data/repo/top_products.dart';

part 'top_product_event.dart';
part 'top_product_state.dart';

class TopProductBloc extends Bloc<TopProductEvent, TopProductState> {
  final TopProductRepo topProductRepo;
  TopProductBloc({required this.topProductRepo}) : super(TopProductInitial()) {
    on<GetTopProducts>(
        (GetTopProducts event, Emitter<TopProductState> emit) async {
      emit(TopProductLoading());
      try {
        final topProducts = await topProductRepo.fetchTopProducts();
        emit(TopProductSuccess(topProducts: topProducts));
      } catch (e) {
        emit(TopProductError(message: e.toString()));
      }
    });
  }
}
