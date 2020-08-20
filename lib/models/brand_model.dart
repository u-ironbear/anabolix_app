class BrandModel {
  final String name;
  final String manufacturer;
  final String activeSubstance;
  final String releaseForm;
  final String package;
  final List<String> images;
  final String video;
  final int quality;
  final int rating;
  final bool isNew;

  BrandModel({
    this.name,
    this.manufacturer,
    this.activeSubstance,
    this.releaseForm,
    this.package,
    this.images,
    this.video,
    this.quality,
    this.rating,
    this.isNew,
  });

  BrandModel.fromData(Map<String, dynamic> data)
      : name = data['name'],
        manufacturer = data['manufacturer'],
        activeSubstance = data['active_substance'],
        releaseForm = data['release_form'],
        package = data['package'],
        images = List.from(data['images']),
        video = data['video'],
        quality = data['quality'],
        rating = data['rating'],
        isNew = data['is_new'];
}
