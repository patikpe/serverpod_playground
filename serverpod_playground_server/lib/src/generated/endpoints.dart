/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/app_configuration/app_configuration_endpoint.dart' as _i2;
import 'package:serverpod_playground_server/src/generated/app_configuration/app_configuration_model.dart'
    as _i3;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'appConfiguration': _i2.AppConfigurationEndpoint()
        ..initialize(
          server,
          'appConfiguration',
          null,
        )
    };
    connectors['appConfiguration'] = _i1.EndpointConnector(
      name: 'appConfiguration',
      endpoint: endpoints['appConfiguration']!,
      methodConnectors: {
        'getAppConfiguration': _i1.MethodConnector(
          name: 'getAppConfiguration',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['appConfiguration'] as _i2.AppConfigurationEndpoint)
                  .getAppConfiguration(session),
        ),
        'updateAppConfiguration': _i1.MethodConnector(
          name: 'updateAppConfiguration',
          params: {
            'appConfiguration': _i1.ParameterDescription(
              name: 'appConfiguration',
              type: _i1.getType<_i3.AppConfiguration>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['appConfiguration'] as _i2.AppConfigurationEndpoint)
                  .updateAppConfiguration(
            session,
            params['appConfiguration'],
          ),
        ),
      },
    );
  }
}
