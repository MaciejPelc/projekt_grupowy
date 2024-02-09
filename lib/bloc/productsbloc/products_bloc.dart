import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:projekt_grupowy/models/response_products_model.dart';
import 'package:projekt_grupowy/services/project_service.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial()) {
    on<ProductsEvent>((event, emit) {});

    // on<GetProducts>(_getProducts);
  }

  // Future<void> _getProducts(
  //     GetProducts event, Emitter<ProductsState> emit) async {
  //   try {
  //     emit(ProductsLoading());
  //     ResponseProductsModel responseProductsModel =
  //         const ResponseProductsModel();
  //     ProjectService projectRepository = ProjectService();

  //     responseProductsModel = await projectRepository.getProducts();
  //     if (responseProductsModel.iteams != null) {
  //       emit(ProductsLoaded());
  //     } else {
  //       emit(ProductsError(message: "error"));
  //     }
  //   } catch (e) {
  //     emit(ProductsError(message: "error"));
  //   }
  // }
}
