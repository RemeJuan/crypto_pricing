import 'package:crypto_pricing/domain/entities/tickers/tickers_data_entity.dart';
import 'package:crypto_pricing/domain/entities/tickers/tickers_entity.dart';
import 'package:crypto_pricing/domain/entities/tickers/tickers_info_entity.dart';

const fixtureTickers = TickersEntity(
  data: [
    fixtureBtcData,
    fixtureEthData,
  ],
  info: fixtureInfoData,
);

const fixtureBtcData = TickersDataEntity(
  id: '90',
  symbol: 'BTC',
  name: 'Bitcoin',
  nameid: 'bitcoin',
  rank: 1,
  priceUsd: '53715.86',
  percentChange24h: '2.43',
  percentChange1h: '-0.39',
  percentChange7d: '-3.52',
  priceBtc: '1.00',
  marketCapUsd: '1002469620607.00',
  volume24: 82294456898.45444,
  volume24a: 100692891899.96309,
  csupply: '18662452.00',
  tsupply: '18662452',
  msupply: '21000000',
);

const fixtureEthData = TickersDataEntity(
  id: '80',
  symbol: 'ETH',
  name: 'Ethereum',
  nameid: 'ethereum',
  rank: 2,
  priceUsd: '2497.98',
  percentChange24h: '1.19',
  percentChange1h: '-0.31',
  percentChange7d: '17.19',
  priceBtc: '0.049130',
  marketCapUsd: '287701551828.81',
  volume24: 35955233951.64126,
  volume24a: 40763887100.48489,
  csupply: '115173595.00',
  tsupply: '115173595',
  msupply: '',
);

const fixtureInfoData = TickersInfoEntity(
  coinsNum: 5915,
  time: 1619496963,
);
