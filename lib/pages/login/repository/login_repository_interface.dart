import 'package:altyn_login/core/exceptions/failure.dart';
import 'package:altyn_login/pages/login/repository/model/user_login.dart';

import '../../../core/either/either.dart';

abstract class LoginRepositoryInterface {
  Future<Either<Failure, UserModel>> login(String email, String password);
}
