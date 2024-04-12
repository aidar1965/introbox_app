import 'dart:convert';

import 'package:flutter/foundation.dart';

@immutable
class PresentationLink {
  final String link;
  final String description;

  const PresentationLink({required this.link, required this.description});

  Map get mapLink => {'link': link, 'description': description};
}
