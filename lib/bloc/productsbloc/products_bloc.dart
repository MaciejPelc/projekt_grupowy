import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projekt_grupowy/models/response_product_model.dart';
import 'package:projekt_grupowy/services/project_service.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial()) {
    on<ProductsEvent>((event, emit) {});

    on<GetProducts>(_getProducts);
  }

  Future<void> _getProducts(
      GetProducts event, Emitter<ProductsState> emit) async {
    try {
      emit(ProductsLoading());
      ResponseProductModel responseProductModel = const ResponseProductModel();
      ProjectService projectRepository = ProjectService();

      responseProductModel = await projectRepository.getProducts();
      if (responseProductModel.items != null) {
        emit(ProductsLoaded(responseProductModel: responseProductModel));
      } else {
        emit(ProductsError(message: "error"));
      }
    } catch (e) {
      emit(ProductsError(message: "error"));
    }
  }
}
