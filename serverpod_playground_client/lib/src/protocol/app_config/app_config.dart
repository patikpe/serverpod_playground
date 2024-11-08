/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class AppConfiguration implements _i1.SerializableModel {
  AppConfiguration._({
    required this.name,
    required this.color,
  });

  factory AppConfiguration({
    required String name,
    required String color,
  }) = _AppConfigurationImpl;

  factory AppConfiguration.fromJson(Map<String, dynamic> jsonSerialization) {
    return AppConfiguration(
      name: jsonSerialization['name'] as String,
      color: jsonSerialization['color'] as String,
    );
  }

  String name;

  String color;

  AppConfiguration copyWith({
    String? name,
    String? color,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'color': color,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _AppConfigurationImpl extends AppConfiguration {
  _AppConfigurationImpl({
    required String name,
    required String color,
  }) : super._(
          name: name,
          color: color,
        );

  @override
  AppConfiguration copyWith({
    String? name,
    String? color,
  }) {
    return AppConfiguration(
      name: name ?? this.name,
      color: color ?? this.color,
    );
  }
}
