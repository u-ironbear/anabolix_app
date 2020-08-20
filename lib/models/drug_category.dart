class DrugCategory {
  final String code;
  final String name;
  final String description;
  final String imageUrl;

  DrugCategory({
    this.code,
    this.name,
    this.description,
    this.imageUrl,
  });

  DrugCategory.fromData(Map<String, dynamic> data)
      : code = data['code'],
        name = data['name'],
        description = data['description'],
        imageUrl = data['image_url'];
}
