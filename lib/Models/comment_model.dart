class Comment {
  String authorName;
  String authorImageUrl;
  String text;

  Comment({
    this.authorName,
    this.authorImageUrl,
    this.text,
  });
}

final List<Comment> comments = [
  Comment(
    authorName: 'Angel',
    authorImageUrl: 'images/user2.png',
    text: 'Loving this photo!!',
  ),
  Comment(
    authorName: 'Charlie',
    authorImageUrl: 'images/user3.png',
    text: 'One of the best photos of you...',
  ),
  Comment(
    authorName: 'Angelina Martin',
    authorImageUrl: 'images/user4.png',
    text: 'Can\'t wait for you to post more!',
  ),
  Comment(
    authorName: 'Jax',
    authorImageUrl: 'images/user1.png',
    text: 'Nice job',
  ),
  Comment(
    authorName: 'Sam Martin',
    authorImageUrl: 'images/user0.png',
    text: 'Thanks everyone :)',
  ),
];
