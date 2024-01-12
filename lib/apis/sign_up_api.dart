import 'package:autism_project/model/user_account.dart';
import 'package:autism_project/utils/import.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'base_api.dart';

class SignUpApi extends BaseApi {
  signup(data) async {
    var res = await dio.post(
      "/api/v1/auth/signup",
      data: data,
    );
    //statusCode
    print(res.statusCode);
    if (res.statusCode == 201) {
      return res;
    } else {
      return null;
    }
  }

  sendCode(data) async {
    try {
      print('email verification');
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? id = pref.getString("id");
      print(id);
      print('values');

      //u can say otp or id in query parameters
      var res = await dio.post('/api/v1/auth/verifyEmail',
          data: data, queryParameters: {'id': id.toString()});
      print(res.statusCode);
      print(res.data);
   
    
      return res;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
