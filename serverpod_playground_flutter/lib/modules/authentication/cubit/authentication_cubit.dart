import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_state.dart';

// final _log = Logger('AuthenticationCubit');

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationState());
}
