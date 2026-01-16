import '../../../data/repositories/authentication.dart';
import '../../../data/repositories/user_repository.dart';
import 'login_params.dart';
import '../usecase.dart';

import '../../entities/result.dart';
import '../../entities/user.dart';

class Login implements UseCase<Result<User>, LoginParams> {
  final Authentication authentication;
  final UserRepository userRepository;

  Login({required this.authentication, required this.userRepository});

  @override
  Future<Result<User>> call(LoginParams params) async {
    final idResult = await authentication.login(
      email: params.email,
      password: params.password,
    );

    if (idResult is Success) {
      final userResult = await userRepository.getUser(
        uid: idResult.resultValue!,
      );

      return switch (userResult) {
        Success(value: final user) => Result.success(user),
        Failed(value: final message) => Result.failed(message),
      };
    } else {
      return Result.failed(idResult.errorMessage!);
    }
  }
}
