import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  final _log = Logger('LoginCubit');

  void loginUser(String email, String password) async {
    emit(state.copyWith(
      status: LoginStatus.loading,
    ));

    // try {
    //   await FirebaseAuth.instance
    //       .signInWithEmailAndPassword(email: email, password: password)
    //       .then(
    //         (value) => emit(
    //           state.copyWith(
    //             status: LoginStatus.success,
    //           ),
    //         ),
    //       );
    // } on FirebaseAuthException catch (e) {
    //   if (e.code == 'user-not-found') {
    //     _log.info('No user found.', e);
    //     emit(state.copyWith(
    //       status: LoginStatus.userNotFound,
    //     ));
    //   } else if (e.code == 'wrong-password') {
    //     _log.info('Wrong password provided for that user.', e);
    //     emit(state.copyWith(
    //       status: LoginStatus.wrongPassword,
    //     ));
    //   } else if (e.code == 'user-disabled') {
    //     _log.info('The user account has been disabled by an administrator.', e);
    //     emit(state.copyWith(
    //       status: LoginStatus.userDisabled,
    //     ));
    //   } else if (e.code == 'invalid-email') {
    //     _log.info('The email address is badly formatted.', e);
    //     emit(state.copyWith(
    //       status: LoginStatus.invalidEmail,
    //     ));
    //   }
    // } catch (e) {
    //   _log.severe('Error creating user', e);
    //   emit(state.copyWith(
    //     status: LoginStatus.error,
    //   ));
    // }
  }
}
