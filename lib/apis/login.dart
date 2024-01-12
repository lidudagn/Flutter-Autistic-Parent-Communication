import 'package:shared_preferences/shared_preferences.dart';
import 'base_api.dart';

class loginApi extends BaseApi {
  loginn(data) async {
    print(data);
    var res = await dio.post('/api/v1/auth/signin', data: data);
    if (res.statusCode == 200) {
      return res.data;
    } else {
      return null;
    }
  }
}
