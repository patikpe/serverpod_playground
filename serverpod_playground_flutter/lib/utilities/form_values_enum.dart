enum FormEnumValues {
  email(code: 'email'),
  password(code: 'password'),
  confirmPassword(code: 'confirmPassword');

  const FormEnumValues({required this.code});

  final String code;
}
