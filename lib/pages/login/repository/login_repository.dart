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
      String phoneNumber,
      String password,
      ) async {
    final data = {
      "username": phoneNumber,
      "password": password,
      "scope": 'coreapi',
      "grant_type": 'password',
    };

    final result = call(
      RestMethod.post,
      auth,
      body: data,
    );
    return result.then<Either<Failure, UserModel>>(
          (either) => either.map<Failure, UserModel>(
            (e) {
          return Left<Failure, UserModel>(e);
        },
            (r) {
          return Right<Failure, UserModel>(UserModel.fromMap(r));
        },
      ),
    );
  }
}