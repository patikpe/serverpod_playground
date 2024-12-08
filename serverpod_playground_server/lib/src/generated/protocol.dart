/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i3;
import 'app_configuration/app_configuration_model.dart' as _i4;
import 'home/main_menu_model.dart' as _i5;
import 'server_exception/server_exception.dart' as _i6;
import 'server_exception/server_exception_enum.dart' as _i7;
export 'app_configuration/app_configuration_model.dart';
export 'home/main_menu_model.dart';
export 'server_exception/server_exception.dart';
export 'server_exception/server_exception_enum.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'app_configuration',
      dartName: 'AppConfiguration',
      schema: 'public',
      module: 'serverpod_playground',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'app_configuration_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'app_configuration_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i4.AppConfiguration) {
      return _i4.AppConfiguration.fromJson(data) as T;
    }
    if (t == _i5.MainMenu) {
      return _i5.MainMenu.fromJson(data) as T;
    }
    if (t == _i6.ServerException) {
      return _i6.ServerException.fromJson(data) as T;
    }
    if (t == _i7.ServerExceptionType) {
      return _i7.ServerExceptionType.fromJson(data) as T;
    }
    if (t == _i1.getType<_i4.AppConfiguration?>()) {
      return (data != null ? _i4.AppConfiguration.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.MainMenu?>()) {
      return (data != null ? _i5.MainMenu.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.ServerException?>()) {
      return (data != null ? _i6.ServerException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.ServerExceptionType?>()) {
      return (data != null ? _i7.ServerExceptionType.fromJson(data) : null)
          as T;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i4.AppConfiguration) {
      return 'AppConfiguration';
    }
    if (data is _i5.MainMenu) {
      return 'MainMenu';
    }
    if (data is _i6.ServerException) {
      return 'ServerException';
    }
    if (data is _i7.ServerExceptionType) {
      return 'ServerExceptionType';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'AppConfiguration') {
      return deserialize<_i4.AppConfiguration>(data['data']);
    }
    if (data['className'] == 'MainMenu') {
      return deserialize<_i5.MainMenu>(data['data']);
    }
    if (data['className'] == 'ServerException') {
      return deserialize<_i6.ServerException>(data['data']);
    }
    if (data['className'] == 'ServerExceptionType') {
      return deserialize<_i7.ServerExceptionType>(data['data']);
    }
    if (data['className'].startsWith('serverpod.')) {
      data['className'] = data['className'].substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.AppConfiguration:
        return _i4.AppConfiguration.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'serverpod_playground';
}
