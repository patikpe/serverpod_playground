import 'package:serverpod/serverpod.dart';
import 'package:serverpod_playground_server/src/generated/protocol.dart';

class AppConfigurationEndpoint extends Endpoint {
  Future<AppConfiguration?> getAppConfiguration(Session session) async {
    return await AppConfiguration.db.findFirstRow(session);
  }

  Future<AppConfiguration> updateAppConfiguration(
      Session session, AppConfiguration appConfiguration) async {
    return await AppConfiguration.db.updateRow(session, appConfiguration);
  }
}
