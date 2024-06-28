part of 'top_product_bloc.dart';

sealed class TopProductEvent extends Equatable {
  const TopProductEvent();

  @override
  List<Object> get props => [];
}

class GetTopProducts extends TopProductEvent {
  const GetTopProducts();
}
