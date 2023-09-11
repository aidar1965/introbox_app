import 'package:flutter/foundation.dart';

import 'package:equatable/equatable.dart';

@immutable
class RecordCategory extends Equatable {
  final String id;

  final String name;
  const RecordCategory({required this.name, required this.id});

  RecordCategory copyWith({
    String? id,
    String? name,
  }) {
    return RecordCategory(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
