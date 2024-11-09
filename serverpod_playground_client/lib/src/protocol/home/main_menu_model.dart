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

abstract class MainMenu implements _i1.SerializableModel {
  MainMenu._({required this.name});

  factory MainMenu({required String name}) = _MainMenuImpl;

  factory MainMenu.fromJson(Map<String, dynamic> jsonSerialization) {
    return MainMenu(name: jsonSerialization['name'] as String);
  }

  String name;

  MainMenu copyWith({String? name});
  @override
  Map<String, dynamic> toJson() {
    return {'name': name};
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _MainMenuImpl extends MainMenu {
  _MainMenuImpl({required String name}) : super._(name: name);

  @override
  MainMenu copyWith({String? name}) {
    return MainMenu(name: name ?? this.name);
  }
}
