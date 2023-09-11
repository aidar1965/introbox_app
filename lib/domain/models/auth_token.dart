import 'dart:convert';

class AuthToken {
  /// The access token string as issued by the authorization server.
  final String? accessToken;

  /// The type of token this is, typically just the string “bearer”.
  final String? tokenType;

  /// If the access token expires, the server should reply
  /// with the duration of time the access token is granted for.
  final int? expiresIn;

  /// Token which applications can use to obtain another access token.
  final String? refreshToken;

  /// Application scope granted as defined in https://oauth.net/2/scope
  final String? scope;

  const AuthToken({
    required this.accessToken,
    this.tokenType = 'bearer',
    this.expiresIn,
    this.refreshToken,
    this.scope,
  });

  @override
  String toString() => json.encode(({
        'accessToken': accessToken,
        'tokenType': tokenType,
        'refreshToken': refreshToken,
        'expiresIn': expiresIn,
        'scope': scope
      }));

  factory AuthToken.parse(String data) {
    final map = json.decode(data);
    return AuthToken(
      accessToken: map['accessToken'],
      refreshToken: map['refreshToken'],
      expiresIn: map['expiresIn'],
      tokenType: map['tokenType'],
    );
  }
}
