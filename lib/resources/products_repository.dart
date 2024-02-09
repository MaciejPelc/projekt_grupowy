import 'package:projekt_grupowy/models/response_product_model.dart';
import 'package:projekt_grupowy/services/project_service.dart';

class ProductsRepository {
  ProjectService projectRepository = ProjectService();

  Future<ResponseProductModel> getProducts() async =>
      await projectRepository.getProducts();
}
