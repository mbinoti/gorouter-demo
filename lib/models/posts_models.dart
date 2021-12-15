class Post {
  final int useId;
  final int id;
  final String title;
  final String body;

  Post(this.useId, this.id, this.title, this.body);
  factory Post.fromJson(Map json) {
    return Post(
      json['userId'],
      json['id'],
      json['title'],
      json['body'],
    );
  }

  @override
  String toString() {
    return 'id = $id';
  }
}
