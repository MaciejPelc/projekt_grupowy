part of 'products_bloc.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class ProductsLoading extends ProductsState {}

final class ProductsLoaded extends ProductsState {
  ResponseProductModel responseProductModel = const ResponseProductModel();
  ProductsLoaded({required this.responseProductModel});
}

final class ProductsError extends ProductsState {
  final String message;
  ProductsError({required this.message});
}
