import 'package:flutter/foundation.dart';

import 'package:equatable/equatable.dart';

@immutable
class FragmentCategory extends Equatable {
  final int id;

  final String name;
  const FragmentCategory({required this.name, required this.id});

  FragmentCategory copyWith({
    int? id,
    String? name,
  }) {
    return FragmentCategory(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
