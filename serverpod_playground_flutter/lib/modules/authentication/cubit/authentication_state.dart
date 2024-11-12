part of 'authentication_cubit.dart';

enum AuthenticationStatus {
  initial,
  loading,
  success,
  error,
  showLogin,
  showRegister,
  showForgotPassword,
}

// https://docs.serverpod.dev/concepts/authentication/custom-overrides

class AuthenticationState extends Equatable {
  final AuthenticationStatus status;

  const AuthenticationState({
    this.status = AuthenticationStatus.initial,
  });

  AuthenticationState copyWith({
    AuthenticationStatus? status,
  }) {
    return AuthenticationState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        status,
      ];
}
