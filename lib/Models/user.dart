class User {
  final String firstName;
  final String lastName;
  final String email;
  final String pictureUrl;
  final String location;
  // Add more fields as needed

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.pictureUrl,
    required this.location
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['name']['first'],
      lastName: json['name']['last'],
      email: json['email'],
      pictureUrl: json['picture']['large'],
      location: json['location']['country']
    );
  }
}
