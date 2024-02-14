class Company {
  final String id;
  final String name;
  final String? website;
  final String? description;
  final bool isConfirmed;
  final String? country;
  Company({
    required this.id,
    required this.name,
    this.description,
    this.isConfirmed = false,
    this.website,
    this.country,
  });
}
