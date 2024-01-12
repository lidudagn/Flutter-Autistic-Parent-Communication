import 'package:autism_project/apis/base_api.dart';
import 'package:autism_project/modules/profilePicture/profilePicture.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class parent extends BaseApi {
  familyInfo(data) async {
    // var image = await MultipartFile.fromFile(profile.path);
    print(data);
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? id = pref.getString("id");
    // var formData = FormData.fromMap({"file": profile, "data": data});
    // print(formData);
    print('formdata');
    var res = await dio.post('/api/v1/parentProfile',
        data: data, queryParameters: {'id': id.toString()});

    return res.statusCode;
  }

  childinformation(data) async {
    print(data);
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? id = pref.getString("id");

    var res = await dio.post('/api/v1/childProfile',
        data: data, queryParameters: {'id': id.toString()});

    return res.statusCode;
  }
}
