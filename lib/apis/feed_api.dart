import 'package:autism_project/apis/base_api.dart';

class FeedApi extends BaseApi {
  fetchFeedForHome() async {
    var res = await dio.get("/api/v1/post/readAllPosts");
    print(res);
    if (res.statusCode == 200) {
      return res.data;
    } else {
      return null;
    }
  }
}
