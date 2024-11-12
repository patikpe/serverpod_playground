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
import 'dart:async' as _i2;
import 'package:serverpod_playground_client/src/protocol/app_configuration/app_configuration_model.dart'
    as _i3;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i4;
import 'protocol.dart' as _i5;

/// {@category Endpoint}
class EndpointAppConfiguration extends _i1.EndpointRef {
  EndpointAppConfiguration(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'appConfiguration';

  _i2.Future<_i3.AppConfiguration> getAppConfiguration() =>
      caller.callServerEndpoint<_i3.AppConfiguration>(
        'appConfiguration',
        'getAppConfiguration',
        {},
      );

  _i2.Future<_i3.AppConfiguration> updateAppConfiguration(
          _i3.AppConfiguration appConfiguration) =>
      caller.callServerEndpoint<_i3.AppConfiguration>(
        'appConfiguration',
        'updateAppConfiguration',
        {'appConfiguration': appConfiguration},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i4.Caller(client);
  }

  late final _i4.Caller auth;
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i5.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    appConfiguration = EndpointAppConfiguration(this);
    modules = _Modules(this);
  }

  late final EndpointAppConfiguration appConfiguration;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup =>
      {'appConfiguration': appConfiguration};

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
