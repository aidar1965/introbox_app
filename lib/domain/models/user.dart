import 'package:flutter/foundation.dart';

@immutable
class User {
  final String email;

  final String? firstName;

  final String? lastName;

  final String? secondName;

  final String? imageUrl;

  final String? about;
  const User({
    required this.email,
    this.firstName,
    this.lastName,
    this.secondName,
    this.imageUrl,
    this.about,
  });

  User copyWith({
    String? email,
    String? firstName,
    String? lastName,
    String? secondName,
    String? imageUrl,
    String? about,
  }) {
    return User(
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      secondName: secondName ?? this.secondName,
      imageUrl: imageUrl ?? this.imageUrl,
      about: about ?? this.about,
    );
  }
}
