import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';

final FutureProvider<String> storagePathProvider = FutureProvider<String>(
  (ref) async {
    final _dir = await getApplicationDocumentsDirectory();
    return _dir.path;
  },
);
