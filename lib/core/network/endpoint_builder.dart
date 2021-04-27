class EndpointBuilder {
  static Uri uri(String path, {Map<String, dynamic>? queryParameters}) {
    return Uri(
      scheme: 'https',
      host: 'api.coinlore.net',
      path: '/api/$path',
      queryParameters: queryParameters,
    );
  }

  static String url(String path, {Map<String, dynamic>? queryParameters}) {
    return uri(
      path,
      queryParameters: queryParameters,
    ).toString();
  }
}
