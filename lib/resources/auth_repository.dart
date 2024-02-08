import 'package:projekt_grupowy/models/post_login_model.dart';
import 'package:projekt_grupowy/models/response_user_model.dart';
import 'package:projekt_grupowy/services/project_service.dart';

class AuthRepository {
  ProjectService projectRepository = ProjectService();

  Future<ResponseUserModel> login(PostLoginModel loginModel) async =>
      await projectRepository.auth(loginModel);
}
