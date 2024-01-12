import 'package:autism_project/routes/routes.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'base_api.dart';
import 'package:dio/dio.dart';

class OrganizationApi extends BaseApi {
  saveOrganizationInfo(data) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? id = pref.getString("id");
    print(data);
    print('object');
    var response = await dio.post("/api/v1/organizationProfile",
        data: data, queryParameters: {'id': id.toString()});
    print(response.statusCode);

    Get.offAllNamed(
      AppRoutes.signin,
    );

    return response.statusCode;
  }
}
