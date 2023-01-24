class Data {
  final int postId;
  final int id;
  final String name;
  final String email;

  Data(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email});

  factory Data.fromJSON(Map<String, dynamic> json) {
    return Data(
        postId: json['postId'],
        id: json['id'],
        name: json['name'],
        email: json['email']);
  }
}
