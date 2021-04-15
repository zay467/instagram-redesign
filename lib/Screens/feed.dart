import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_redesign/Models/post_model.dart';
import 'package:instagram_redesign/Screens/viewPost.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  Widget _buildPost(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 560.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(0, 2),
                              blurRadius: 6.0)
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage(posts[index].authorImageUrl),
                      ),
                    ),
                    title: Text(
                      posts[index].authorName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(posts[index].timeAgo),
                    trailing: IconButton(
                      icon: Icon(Icons.more_horiz),
                      color: Colors.black,
                      onPressed: () => print("More"),
                    ),
                  ),
                  InkWell(
                    onDoubleTap: () => print("Like Post."),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ViewPost(
                                post: posts[index],
                              )),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0, 2),
                              blurRadius: 8.0)
                        ],
                        image: DecorationImage(
                          image: AssetImage(posts[index].imageUrl),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () => print("Like Post"),
                                  iconSize: 30.0,
                                  icon: Icon(Icons.favorite_border),
                                ),
                                Text(
                                  "2,543",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => ViewPost(
                                            post: posts[index],
                                          ),
                                        ),
                                      ),
                                      iconSize: 30.0,
                                      icon: Icon(Icons.chat),
                                    ),
                                    Text(
                                      "350",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () => print("Bookmark"),
                          icon: Icon(Icons.bookmark_border),
                          iconSize: 30.0,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Instagram",
                  style: TextStyle(fontFamily: "Billabong", fontSize: 32.0),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => print("IGTV"),
                      icon: Icon(Icons.live_tv),
                      iconSize: 30.0,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Container(
                      width: 35.0,
                      child: IconButton(
                        onPressed: () => print("Send"),
                        icon: Icon(Icons.send),
                        iconSize: 30.0,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return SizedBox(
                    width: 10.0,
                  );
                }
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 2),
                          blurRadius: 6.0)
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(stories[index - 1]),
                  ),
                );
              },
            ),
          ),
          _buildPost(0),
          _buildPost(1),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.dashboard,
                size: 30.0,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: FlatButton(
                  onPressed: () => print("Upload Photo"),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Color.fromRGBO(52, 199, 89, 1),
                  child: Icon(
                    Icons.add,
                    size: 35.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.favorite_border,
                size: 30.0,
                color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.person_outline,
                size: 30.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
