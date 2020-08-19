class DrugCategory {
  final String code;
  final String titleMain;
  final String titleOptional;
  final String color;
  final String image;

  DrugCategory({
    this.code,
    this.titleMain,
    this.titleOptional,
    this.color,
    this.image,
  });

  DrugCategory.fromData(Map<String, dynamic> data)
      : code = data['code'],
        titleMain = data['title_main'],
        titleOptional = data['title_optional'],
        color = data['color'],
        image = data['image'];
}

class DrugModel {}
