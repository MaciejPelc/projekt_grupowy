import 'package:projekt_grupowy/models/post_login_model.dart';
import 'package:projekt_grupowy/models/response_user_model.dart';
import 'package:projekt_grupowy/services/rest_api.dart';

class ProjectService {
  Future<ResponseUserModel> auth(PostLoginModel postLoginModel) async {
    return await RestApi.I.post(
      endpoint: "api/auth/login",
      body: postLoginModel,
    );
  }
}
