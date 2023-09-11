import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class SubjectCategory extends Equatable {
  final String id;

  final String name;
  const SubjectCategory({required this.name, required this.id});

  SubjectCategory copyWith({
    String? id,
    String? name,
  }) {
    return SubjectCategory(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
