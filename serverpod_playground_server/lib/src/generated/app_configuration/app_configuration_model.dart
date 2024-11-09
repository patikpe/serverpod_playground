/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: invalid_use_of_visible_for_testing_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class AppConfiguration
    implements _i1.TableRow, _i1.ProtocolSerialization {
  AppConfiguration._({
    this.id,
    required this.name,
    required this.color,
  });

  factory AppConfiguration({
    int? id,
    required String name,
    required String color,
  }) = _AppConfigurationImpl;

  factory AppConfiguration.fromJson(Map<String, dynamic> jsonSerialization) {
    return AppConfiguration(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      color: jsonSerialization['color'] as String,
    );
  }

  static final t = AppConfigurationTable();

  static const db = AppConfigurationRepository._();

  @override
  int? id;

  String name;

  String color;

  @override
  _i1.Table get table => t;

  AppConfiguration copyWith({
    int? id,
    String? name,
    String? color,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'color': color,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'color': color,
    };
  }

  static AppConfigurationInclude include() {
    return AppConfigurationInclude._();
  }

  static AppConfigurationIncludeList includeList({
    _i1.WhereExpressionBuilder<AppConfigurationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AppConfigurationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AppConfigurationTable>? orderByList,
    AppConfigurationInclude? include,
  }) {
    return AppConfigurationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AppConfiguration.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(AppConfiguration.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AppConfigurationImpl extends AppConfiguration {
  _AppConfigurationImpl({
    int? id,
    required String name,
    required String color,
  }) : super._(
          id: id,
          name: name,
          color: color,
        );

  @override
  AppConfiguration copyWith({
    Object? id = _Undefined,
    String? name,
    String? color,
  }) {
    return AppConfiguration(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      color: color ?? this.color,
    );
  }
}

class AppConfigurationTable extends _i1.Table {
  AppConfigurationTable({super.tableRelation})
      : super(tableName: 'app_configuration') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    color = _i1.ColumnString(
      'color',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString color;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        color,
      ];
}

class AppConfigurationInclude extends _i1.IncludeObject {
  AppConfigurationInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => AppConfiguration.t;
}

class AppConfigurationIncludeList extends _i1.IncludeList {
  AppConfigurationIncludeList._({
    _i1.WhereExpressionBuilder<AppConfigurationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(AppConfiguration.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => AppConfiguration.t;
}

class AppConfigurationRepository {
  const AppConfigurationRepository._();

  Future<List<AppConfiguration>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AppConfigurationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AppConfigurationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AppConfigurationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<AppConfiguration>(
      where: where?.call(AppConfiguration.t),
      orderBy: orderBy?.call(AppConfiguration.t),
      orderByList: orderByList?.call(AppConfiguration.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<AppConfiguration?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AppConfigurationTable>? where,
    int? offset,
    _i1.OrderByBuilder<AppConfigurationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AppConfigurationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<AppConfiguration>(
      where: where?.call(AppConfiguration.t),
      orderBy: orderBy?.call(AppConfiguration.t),
      orderByList: orderByList?.call(AppConfiguration.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<AppConfiguration?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<AppConfiguration>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<AppConfiguration>> insert(
    _i1.Session session,
    List<AppConfiguration> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<AppConfiguration>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<AppConfiguration> insertRow(
    _i1.Session session,
    AppConfiguration row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<AppConfiguration>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<AppConfiguration>> update(
    _i1.Session session,
    List<AppConfiguration> rows, {
    _i1.ColumnSelections<AppConfigurationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<AppConfiguration>(
      rows,
      columns: columns?.call(AppConfiguration.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<AppConfiguration> updateRow(
    _i1.Session session,
    AppConfiguration row, {
    _i1.ColumnSelections<AppConfigurationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<AppConfiguration>(
      row,
      columns: columns?.call(AppConfiguration.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<AppConfiguration>> delete(
    _i1.Session session,
    List<AppConfiguration> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<AppConfiguration>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<AppConfiguration> deleteRow(
    _i1.Session session,
    AppConfiguration row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<AppConfiguration>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<AppConfiguration>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AppConfigurationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<AppConfiguration>(
      where: where(AppConfiguration.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AppConfigurationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<AppConfiguration>(
      where: where?.call(AppConfiguration.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
