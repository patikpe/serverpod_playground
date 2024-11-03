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
import 'app_config/app_config.dart' as _i2;
import 'home/main_menu.dart' as _i3;
export 'app_config/app_config.dart';
export 'home/main_menu.dart';
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
    if (t == _i1.getType<_i2.AppConfiguration?>()) {
      return (data != null ? _i2.AppConfiguration.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.MainMenu?>()) {
      return (data != null ? _i3.MainMenu.fromJson(data) : null) as T;
    }
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
    return super.deserializeByClassName(data);
  }
}
