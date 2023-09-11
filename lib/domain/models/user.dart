import 'package:flutter/foundation.dart';

@immutable
class User {
  final String id;

  final String phone;

  final String? firstName;

  final String? lastName;

  final String? secondName;

  final String? imageUrl;

  final String? about;
  const User({
    required this.id,
    required this.phone,
    this.firstName,
    this.lastName,
    this.secondName,
    this.imageUrl,
    this.about,
  });

  User copyWith({
    String? id,
    String? phone,
    String? firstName,
    String? lastName,
    String? secondName,
    String? imageUrl,
    String? about,
  }) {
    return User(
      id: id ?? this.id,
      phone: phone ?? this.phone,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      secondName: secondName ?? this.secondName,
      imageUrl: imageUrl ?? this.imageUrl,
      about: about ?? this.about,
    );
  }
}
