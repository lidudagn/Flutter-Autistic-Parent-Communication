import 'package:autism_project/utils/constant.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BaseApi {
  BaseApi() {
    setHeader();
  }
  final dio = Dio(BaseOptions(baseUrl: serverIp));

  setHeader() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? token = preferences.getString('token');
    print(token);

    dio.options.headers = {
      'Content-Type': 'application/json',
      "Authorization": token,
    };
  }
}
