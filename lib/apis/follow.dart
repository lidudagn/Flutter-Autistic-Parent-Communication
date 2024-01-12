

import 'package:autism_project/apis/base_api.dart';

class FollowApi extends BaseApi {
  fetchRecommendedUser() async {
    await setHeader();
    //don't forget to set url to fetch data
    var res = await dio.get("");
    if (res.statusCode == 200) {
      return res.data;
    } else {
      return null;
    }
  }

  followUser(data) async {
    await setHeader();
    var res = await dio.post("", data: data);
    if (res.statusCode == 200) {
      return res.statusCode;
    } else {
      return null;
    }
  }

  unFollowUser(data) async {
    await setHeader();
    var res = await dio.post("", data: data);
    if (res.statusCode == 200) {
      return res.statusCode;
    } else {
      return null;
    }
  }
}
