import '../../../domain/models/token_pair.dart';
import '../../../domain/models/user.dart';
import '../../../domain/models/user_with_tokens.dart';
import '../models/responses/user_dto.dart';
import '../models/responses/user_with_tokens_dto.dart';

class ApiDataMapper {
  User mapUser(UserDto dto) =>
      User(firstName: dto.firstName, lastName: dto.lastName, email: dto.email);

  UserWithTokens mapUserWithTokens(UserWithTokensDto dto) {
    return UserWithTokens(
        user: User(
            firstName: dto.firstName, lastName: dto.lastName, email: dto.email),
        tokens: TokenPair(
            accessToken: dto.accessToken, refreshToken: dto.refreshToken));
  }
}
