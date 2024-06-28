part of 'top_product_bloc.dart';

sealed class TopProductState extends Equatable {
  const TopProductState();

  @override
  List<Object> get props => [];
}

final class TopProductInitial extends TopProductState {}

final class TopProductLoading extends TopProductState {}

final class TopProductSuccess extends TopProductState {
  final List<TopProduct> topProducts;
  const TopProductSuccess({required this.topProducts});
}

final class TopProductError extends TopProductState {
  final String message;
  const TopProductError({required this.message});
}
