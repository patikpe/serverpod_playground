/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'app_configuration/app_configuration_model.dart' as _i2;
import 'home/main_menu_model.dart' as _i3;
import 'server_exception/server_exception.dart' as _i4;
import 'server_exception/server_exception_enum.dart' as _i5;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i6;
export 'app_configuration/app_configuration_model.dart';
export 'home/main_menu_model.dart';
export 'server_exception/server_exception.dart';
export 'server_exception/server_exception_enum.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.AppConfiguration) {
      return _i2.AppConfiguration.fromJson(data) as T;
    }
    if (t == _i3.MainMenu) {
      return _i3.MainMenu.fromJson(data) as T;
    }
    if (t == _i4.ServerException) {
      return _i4.ServerException.fromJson(data) as T;
    }
    if (t == _i5.ServerExceptionType) {
      return _i5.ServerExceptionType.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.AppConfiguration?>()) {
      return (data != null ? _i2.AppConfiguration.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.MainMenu?>()) {
      return (data != null ? _i3.MainMenu.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.ServerException?>()) {
      return (data != null ? _i4.ServerException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.ServerExceptionType?>()) {
      return (data != null ? _i5.ServerExceptionType.fromJson(data) : null)
          as T;
    }
    try {
      return _i6.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.AppConfiguration) {
      return 'AppConfiguration';
    }
    if (data is _i3.MainMenu) {
      return 'MainMenu';
    }
    if (data is _i4.ServerException) {
      return 'ServerException';
    }
    if (data is _i5.ServerExceptionType) {
      return 'ServerExceptionType';
    }
    className = _i6.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'AppConfiguration') {
      return deserialize<_i2.AppConfiguration>(data['data']);
    }
    if (data['className'] == 'MainMenu') {
      return deserialize<_i3.MainMenu>(data['data']);
    }
    if (data['className'] == 'ServerException') {
      return deserialize<_i4.ServerException>(data['data']);
    }
    if (data['className'] == 'ServerExceptionType') {
      return deserialize<_i5.ServerExceptionType>(data['data']);
    }
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i6.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
