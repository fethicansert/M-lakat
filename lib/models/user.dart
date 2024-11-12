class User {
  final int id;
  final String image;
  final String username;
  final String email;
  final int messageCount;
  final int imageCount;

  User(
      {required this.id,
      required this.image,
      required this.username,
      required this.email,
      required this.messageCount,
      required this.imageCount});
}
