import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';

part 'authentication_state.dart';

final _log = Logger('AuthenticationCubit');

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationState());
}




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


          // if (e.code == 'weak-password') {
      //   _log.info('The password provided is too weak.', e);
      //   emit(state.copyWith(
      //     status: RegisterStatus.weakPassword,
      //   ));
      // } else if (e.code == 'email-already-in-use') {
      //   _log.info('The account already exists for that email.', e);
      //   emit(state.copyWith(
      //     status: RegisterStatus.emailAlreadyInUse,
      //   ));
      // } else if (e.code == 'invalid-email') {
      //   _log.info('The email address is badly formatted.', e);
      //   emit(state.copyWith(
      //     status: RegisterStatus.invalidEmail,
      //   ));
      // } else if (e.code == 'operation-not-allowed') {
      //   _log.info('The email/password provider is not enabled.', e);
      //   emit(state.copyWith(
      //     status: RegisterStatus.operationNotAllowed,
      //   ));
      // }