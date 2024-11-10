import 'package:serverpod/serverpod.dart';
import 'package:serverpod_playground_server/src/generated/protocol.dart';

class AppConfigurationEndpoint extends Endpoint {
  Future<AppConfiguration?> getAppConfiguration(Session session) async {
    try {
      return await AppConfiguration.db.findFirstRow(session);
    } catch (e) {
      throw (ServerException(
          message: 'No configuration found use default values!',
          type: ServerExceptionType.appConfiguration));
    }
  }

  Future<AppConfiguration> updateAppConfiguration(
      Session session, AppConfiguration appConfiguration) async {
    return await AppConfiguration.db.updateRow(session, appConfiguration);
  }
}
