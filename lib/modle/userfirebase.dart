class UserApp {
  String? id;
  String? name;
  String? email;
  String? password;
  String? phoneNumber;
  bool? isChef;

  UserApp(
      {this.id,
      required this.name,
      required this.email,
      required this.phoneNumber,
      this.isChef = false,
      required this.password});
  UserApp.fromMap(Map map) {
    id = map['id'];
    name = map['name'];
    email = map['email'];
    phoneNumber = map['phoneNumber'];
    isChef = map['isChef'];
  }
  toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'isChef': isChef
    };
  }
}
