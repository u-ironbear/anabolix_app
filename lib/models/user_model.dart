class UserModel {
  final String id;
  final String email;
  final String name;
  final String age;
  final String gender;
  String avatar;

  UserModel({
    this.id,
    this.email,
    this.name,
    this.age,
    this.gender,
    this.avatar,
  });

  UserModel.fromData(Map<String, dynamic> data)
      : id = data['id'],
        email = data['email'],
        name = data['name'],
        age = data['age'],
        gender = data['gender'],
        avatar = data['avatar'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'age': age,
      'gender': gender,
      'avatar': avatar,
    };
  }
}
