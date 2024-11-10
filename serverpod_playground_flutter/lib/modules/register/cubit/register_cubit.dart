import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState());

  final _log = Logger('RegisterCubit');

  void registerNewUser(String email, String password) async {
    emit(state.copyWith(
      status: RegisterStatus.loading,
    ));
    // try {
    //   await FirebaseAuth.instance
    //       .createUserWithEmailAndPassword(
    //         email: email,
    //         password: password,
    //       )
    //       .then(
    //         (value) => emit(
    //           state.copyWith(
    //             status: RegisterStatus.success,
    //           ),
    //         ),
    //       );
    // } on FirebaseAuthException catch (e) {
    //   if (e.code == 'weak-password') {
    //     _log.info('The password provided is too weak.', e);
    //     emit(state.copyWith(
    //       status: RegisterStatus.weakPassword,
    //     ));
    //   } else if (e.code == 'email-already-in-use') {
    //     _log.info('The account already exists for that email.', e);
    //     emit(state.copyWith(
    //       status: RegisterStatus.emailAlreadyInUse,
    //     ));
    //   } else if (e.code == 'invalid-email') {
    //     _log.info('The email address is badly formatted.', e);
    //     emit(state.copyWith(
    //       status: RegisterStatus.invalidEmail,
    //     ));
    //   } else if (e.code == 'operation-not-allowed') {
    //     _log.info('The email/password provider is not enabled.', e);
    //     emit(state.copyWith(
    //       status: RegisterStatus.operationNotAllowed,
    //     ));
    //   }
    // } catch (e) {
    //   _log.severe('Error creating user', e);
    //   emit(state.copyWith(
    //     status: RegisterStatus.error,
    //   ));
    // }
  }
}
