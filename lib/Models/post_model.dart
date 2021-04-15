class Post {
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;

  Post({
    this.authorName,
    this.authorImageUrl,
    this.timeAgo,
    this.imageUrl,
  });
}

final List<Post> posts = [
  Post(
    authorName: 'Sam Martin',
    authorImageUrl: 'images/user0.png',
    timeAgo: '5 min',
    imageUrl: 'images/post0.jpg',
  ),
  Post(
    authorName: 'Sam Dean',
    authorImageUrl: 'images/user0.png',
    timeAgo: '10 min',
    imageUrl: 'images/post1.jpg',
  ),
];

final List<String> stories = [
  'images/user1.png',
  'images/user2.png',
  'images/user3.png',
  'images/user4.png',
  'images/user0.png',
  'images/user1.png',
  'images/user2.png',
  'images/user3.png',
];
