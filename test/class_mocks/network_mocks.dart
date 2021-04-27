import 'package:crypto_pricing/core/network/network_info.dart';
import 'package:crypto_pricing/core/network/network_manager.dart';
import 'package:mockito/annotations.dart';

export 'network_mocks.mocks.dart';

@GenerateMocks([
  NetworkInfo,
  NetworkManager,
])
void main() {}
