class Post {
  final int userId;
  final int id;
  final String title;
  final String body;
  final String link;
  final int commentCount;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
    required this.link,
    required this.commentCount,
  });

  factory Post.fromJson(Map<String, dynamic> jsonPost) {
    return Post(
      userId: jsonPost['userId'],
      id: jsonPost['id'],
      title: jsonPost['title'],
      body: jsonPost['body'],
      link: jsonPost['link'],
      commentCount: jsonPost['comment_count'],
    );
  }
}
