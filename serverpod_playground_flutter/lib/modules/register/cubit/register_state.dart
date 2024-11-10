part of 'register_cubit.dart';

enum RegisterStatus {
  initial,
  loading,
  success,
  error,
  weakPassword,
  emailAlreadyInUse,
  invalidEmail,
  operationNotAllowed,
}

final class RegisterState extends Equatable {
  final RegisterStatus status;

  const RegisterState({
    this.status = RegisterStatus.initial,
  });

  RegisterState copyWith({
    RegisterStatus? status,
  }) {
    return RegisterState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        status,
      ];
}
