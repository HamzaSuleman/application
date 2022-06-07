class User {
  final int id;
  //final String title;

  const User({required this.id /*, required this.title*/});
  static User fromJson(json) {
    print(json['price']);
    return User(
      id: json['id'], /*, title: json['title']*/
    );
  }
}
