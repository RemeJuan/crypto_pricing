import 'dart:io';

import 'package:crypto_pricing/core/network/network_manager.dart';
import 'package:crypto_pricing/locator.dart';
import 'package:crypto_pricing/providers/directory_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';

class OfflineImage extends HookWidget {
  final String url;
  final String fileName;

  OfflineImage({
    required this.url,
    required this.fileName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hasLocalAsset = useState<bool>(false);

    useEffect(() {
      WidgetsBinding.instance!.addPostFrameCallback(
        (_) => _hasToDownloadAssets(hasLocalAsset),
      );

      return;
    }, [hasLocalAsset]);

    return Consumer(
      builder: (context, watch, _) {
        final sp = watch(storagePathProvider);
        final assetPath = '${sp.data?.value}/icons/$fileName.png';

        return Container(
          height: 25,
          width: 25,
          child: hasLocalAsset.value
              ? Image.file(
                  File(assetPath),
                  key: const Key('IMAGE_FILE'),
                )
              : Image.network(
                  url,
                  key: const Key('IMAGE_NETWORK'),
                  headers: getIt<NetworkManager>().apiHeaders,
                ),
        );
      },
    );
  }

  Future<void> _hasToDownloadAssets(ValueNotifier<bool> hasLocalAsset) async {
    if (kIsWeb) return;

    final _dir = await getApplicationDocumentsDirectory();

    final fn = '${_dir.path}/icons/$fileName.png';

    final file = File(fn);
    final exists = file.existsSync();
    if (!exists) await _downloadFile();

    hasLocalAsset.value = exists;
  }

  Future<void> _downloadFile() async {
    if (url.isEmpty) return;

    final _dir = await getApplicationDocumentsDirectory();

    final file = File('${_dir.path}/icons/$fileName.png');

    try {
      await getIt<NetworkManager>().apiGetFile(url, file);
    } catch (e) {
      rethrow;
    }
  }
}
