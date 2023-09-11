import 'package:flutter/foundation.dart';

import 'package:equatable/equatable.dart';

@immutable
class CourseCategory extends Equatable {
  final String id;

  final String name;
  const CourseCategory({required this.name, required this.id});

  CourseCategory copyWith({
    String? id,
    String? name,
  }) {
    return CourseCategory(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
