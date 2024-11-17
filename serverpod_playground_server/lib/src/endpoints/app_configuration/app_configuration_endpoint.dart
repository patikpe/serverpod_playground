import 'package:serverpod/serverpod.dart';
import 'package:serverpod_playground_server/src/generated/protocol.dart';

class AppConfigurationEndpoint extends Endpoint {
  Future<AppConfiguration> getAppConfiguration(Session session) async {
    try {
      AppConfiguration? appConfiguration =
          await AppConfiguration.db.findFirstRow(session);
      if (appConfiguration == null) {
        throw (ServerException(
          message: 'No configuration found use default values!',
          type: ServerExceptionType.appConfigurationNotFound,
        ));
      }
      return appConfiguration;
    } catch (e) {
      rethrow;
    }
  }

  Future<AppConfiguration> updateAppConfiguration(
      Session session, AppConfiguration appConfiguration) async {
    return await AppConfiguration.db.updateRow(session, appConfiguration);
  }
}
