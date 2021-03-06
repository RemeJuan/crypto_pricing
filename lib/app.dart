import 'package:crypto_pricing/domain/entities/markets/market_entity.dart';
import 'package:crypto_pricing/shared/widgets/offline_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'providers/app_provider.dart';

class CryptoData extends HookWidget {
  @override
  Widget build(context) {
    return Center(
      child: Consumer(
        builder: (context, watch, child) {
          final responseValue = watch(marketsResponseProvider);

          return responseValue.map(
            data: (data) => _buildList(context, data.value.data),
            loading: (_) => const CircularProgressIndicator(),
            error: (message) => Text(message.error.toString()),
          );
        },
      ),
    );
  }

  Widget _buildList(
    BuildContext context,
    List<MarketEntity> data,
  ) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];

        return ListTile(
          leading: _cryptoIcon(context, item.image),
          title: Text(item.name),
          trailing: Text('${item.currentPrice} USD'),
        );
      },
    );
  }

  Widget _cryptoIcon(BuildContext context, String imageUrl) {
    final fileName = imageUrl.split('/').last;

    return OfflineImage(
      fileName: fileName,
      url: imageUrl,
    );
  }
}
