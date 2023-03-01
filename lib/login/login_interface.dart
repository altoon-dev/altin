import 'package:altyn_login/login/user_login.dart';
import 'package:dio/dio.dart';

abstract class ILogin{
  Future<UserModel?> login(String username,String password) async{
    final api = 'http://test.altin:9001/auth/api/v1/oauth/token?grant_type=password&scope=coreapi';
    final data = {
      "+77000000000": username,
      "quesgriturem": password
    };
    final dio = Dio();
    Response response;
    response = await dio.post(api,data:data);
    if(response.statusCode == 200){
      final body = response.data;
      return UserModel(email: username, token: body['token'],);
    }else{
      return null;
    }
  }
}