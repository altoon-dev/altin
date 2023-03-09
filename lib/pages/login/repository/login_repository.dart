import 'package:altyn_login/core/client/api_paths.dart';
import 'package:altyn_login/core/client/base_repository.dart';
import 'package:altyn_login/pages/login/repository/model/user_login.dart';
import 'package:dio/dio.dart';
import '../../../core/either/either.dart';
import '../../../core/exceptions/failure.dart';
import 'login_repository_interface.dart';

class LoginRepository extends BaseRepository
    implements LoginRepositoryInterface {
  @override
  Future<Either<Failure, UserModel>> login(
    String email,
    String password,
  ) async {
    final data = {"email": email, "password": password};

    final result = call(
      RestMethod.post,
      '$apiBaseUrl/$auth',
      body: data,
      parametres: {
        "scope": 'coreapi',
        "grant_type": 'password',
      },
    );
    return result.then<Either<Failure, UserModel>>(
      (either) => either.map(
        (e) {
          print(e);
          return Left<Failure, UserModel>(e);
        },
        (r) {
          print(r);
          return Right<Failure, UserModel>(UserModel.fromJson(r));
        },
      ),
    );
  }
}
