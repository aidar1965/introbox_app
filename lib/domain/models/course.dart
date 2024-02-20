import 'dart:ui';
import 'package:decimal/decimal.dart';
import 'package:flutter/foundation.dart';
import 'channel.dart';
import 'presentation.dart';

@immutable
class Course {
  final String id;

  final Channel channel;

  final String title;

  final String? description;

  final String? image;

  final Decimal price;

  final bool isPublished;

  final DateTime? updatedAt;

  final DateTime createdAt;

  final Locale? locale;

  final List<Presentation>? presentations;

  const Course({
    required this.title,
    required this.description,
    this.image,
    required this.price,
    required this.isPublished,
    required this.id,
    required this.channel,
    this.updatedAt,
    required this.createdAt,
    this.locale,
    this.presentations,
  });
}
