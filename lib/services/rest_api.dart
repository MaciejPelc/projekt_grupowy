import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:projekt_grupowy/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class RestApi {
  static final RestApi _instance = RestApiImplementation();
  static RestApi get I => _instance;

  Future<T> get<T extends Object>({
    required String endpoint,
    dynamic body,
  });
  Future<T> post<T extends Object>({
    required String endpoint,
    dynamic body,
  });
  Future<void> postVoid<T extends Object>({
    required String endpoint,
    dynamic body,
  });
  Future<T> put<T extends Object>({
    required String endpoint,
    dynamic body,
  });
  Future<T> delete<T extends Object>({
    required String endpoint,
    dynamic body,
  });
  // Future<void> download<T extends Object>({
  //   required String url,
  //   required String path,
  //   required String filename,
  //   dynamic body,
  // });
}

//dio
class RestApiImplementation implements RestApi {
  final dio = Dio();
  // String baseUrl = Constants.linkLocal;
  String baseUrl = Constants.linkProd;

  Future<void> setDioToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString(Constants.accessToken);

    dio.options.headers["Authorization"] = "Bearer $token";
  }

  @override
  Future<T> delete<T extends Object>({
    required String endpoint,
    dynamic body,
  }) async {
    try {
      await setDioToken();
      var result = await dio.delete(baseUrl + endpoint,
          data: body != null ? body.toJson() : "",
          options: Options(
              followRedirects: false,
              validateStatus: (status) {
                return status! < 500;
              }));
      if (result.statusCode == 200) {
        return getModelFromMap<T>(result.data);
      } else {
        return getGeneralError<T>();
      }
    } catch (e) {
      return getGeneralError<T>();
    }
  }

  @override
  Future<T> get<T extends Object>({
    required String endpoint,
    dynamic body,
  }) async {
    try {
      await setDioToken();
      final result = await dio.get(baseUrl + endpoint,
          options: Options(
              followRedirects: false,
              validateStatus: (status) {
                return status! < 500;
              }));
      if (result.statusCode == 200) {
        return getModelFromList<T>(result.data);
      } else {
        return getGeneralError<T>();
      }
    } catch (e) {
      return getGeneralError<T>();
    }
  }

  @override
  Future<T> put<T extends Object>({
    required String endpoint,
    dynamic body,
  }) async {
    try {
      await setDioToken();
      var result = await dio.put(baseUrl + endpoint,
          data: body != null ? body.toJson() : "",
          options: Options(
              followRedirects: false,
              validateStatus: (status) {
                return status! < 500;
              }));
      if (result.statusCode == 200) {
        return getModelFromMap<T>(result.data);
      } else {
        return getGeneralError<T>();
      }
    } catch (e) {
      return getGeneralError<T>();
    }
  }

  @override
  Future<T> post<T extends Object>({
    required String endpoint,
    dynamic body,
  }) async {
    try {
      await setDioToken();
      var result = await dio.post(baseUrl + endpoint,
          data: body != null ? body.toJson() : "",
          options: Options(
              followRedirects: false,
              validateStatus: (status) {
                return status! < 500;
              }));
      if (result.statusCode == 200) {
        return getModelFromMap<T>(result.data);
      } else {
        return getGeneralError<T>();
      }
    } catch (e) {
      return getGeneralError<T>();
    }
  }

  ///osobna wojda dla void, zweryfikować poprawność
  @override
  Future<void> postVoid<T extends Object>({
    required String endpoint,
    dynamic body,
  }) async {
    try {
      await setDioToken();
      var result = await dio.post(baseUrl + endpoint,
          data: body != null ? body.toJson() : "",
          options: Options(
              followRedirects: false,
              validateStatus: (status) {
                return status! < 500;
              }));
      if (result.statusCode != 200) {
        throw (Error());
      }
    } catch (e) {
      print(e.toString());
    }
  }

  // @override
  // Future<void> download<T extends Object>(
  //     {required String url,
  //     required String path,
  //     required String filename,
  //     dynamic body}) async {
  //   try {
  //     var result = await dio.download(url, (Headers headers) async {
  //       return "$path/$filename";
  //     },
  //         options: Options(
  //             followRedirects: false,
  //             validateStatus: (status) {
  //               return status! < 500;
  //             }));
  //     if (result.statusCode != 200) {
  //       throw (Error());
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  ///```dart
  ///[
  ///  {...},
  ///  {...},
  ///]
  ///```
  T getModelFromMap<T extends Object>(Map<String, dynamic> json) {
    return GetIt.I.get<T>(param1: json);
  }

  ///```json
  ///{
  ///   "data":[
  ///     {...},
  ///     {...},
  ///   ]
  ///}
  ///```
  T getModelFromList<T extends Object>(List<dynamic> json) {
    return GetIt.I.get<T>(param1: json);
  }

  T getGeneralError<T extends Object>() {
    return GetIt.I.get<T>(param1: {
      "error": "Something wrong happend",
    });
  }
}
