import 'package:crypto_pricing/core/network/network_info.dart';
import 'package:crypto_pricing/core/network/network_manager.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mockito/annotations.dart';

export 'network_mocks.mocks.dart';

@GenerateMocks([
  http.Client,
  NetworkInfo,
  NetworkManager,
  InternetConnectionChecker,
])
void main() {}
