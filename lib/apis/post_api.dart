import 'base_api.dart';

class PostApi extends BaseApi {
  savePost(data) async {
    await setHeader();
  

    var response = await dio.post("/api/v1/post", data: data);
    print(response.statusCode);
    return response.statusCode;
  }

  fetchPost() async {
    await setHeader();
    var response = await dio.get("");
    return response.data;
  }
}
