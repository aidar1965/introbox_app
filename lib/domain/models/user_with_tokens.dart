import 'token_pair.dart';
import 'user.dart';

class UserWithTokens {
  final User user;
  final TokenPair tokens;
  UserWithTokens({
    required this.user,
    required this.tokens,
  });
}
