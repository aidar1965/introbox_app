import 'company.dart';

enum ChannelType { private, commercial, education, government }

class Channel {
  final String id;
  final String title;
  final String? description;
  final ChannelType channelType;
  final Company? company;
  final bool isPublic;
  Channel({
    required this.id,
    required this.title,
    this.description,
    required this.channelType,
    this.company,
    required this.isPublic,
  });
}
