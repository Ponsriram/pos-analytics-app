import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class ConnectionChecker {
  Future<bool> get isConnected;
}

class ConnectionCheckerImpl implements ConnectionChecker {
  final InternetConnection _checker = InternetConnection();

  @override
  Future<bool> get isConnected => _checker.hasInternetAccess;
}
