import 'package:flutter/material.dart';
import 'package:instagram_redesign/Models/comment_model.dart';
import 'package:instagram_redesign/Models/post_model.dart';

class ViewPost extends StatefulWidget {
  final Post post;
  ViewPost({this.post});
  @override
  _ViewPostState createState() => _ViewPostState();
}

class _ViewPostState extends State<ViewPost> {
  Widget _buildComment(int index) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(0, 2), blurRadius: 6.0)
            ],
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(comments[index].authorImageUrl),
          ),
        ),
        title: Text(
          comments[index].authorName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(comments[index].text),
        trailing: IconButton(
          onPressed: () => print("Like Comment"),
          icon: Icon(Icons.favorite_border),
          color: Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40),
              width: double.infinity,
              height: 600.0,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              iconSize: 30.0,
                              color: Colors.black,
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(Icons.arrow_back),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: ListTile(
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
                                        AssetImage(widget.post.authorImageUrl),
                                  ),
                                ),
                                title: Text(
                                  widget.post.authorName,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(widget.post.timeAgo),
                                trailing: IconButton(
                                  icon: Icon(Icons.more_horiz),
                                  color: Colors.black,
                                  onPressed: () => print("More"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onDoubleTap: () => print("Like Post."),
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
                                image: AssetImage(widget.post.imageUrl),
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
                                            onPressed: () => print("Chat"),
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
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              height: 600.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: Column(
                children: [
                  _buildComment(0),
                  _buildComment(1),
                  _buildComment(2),
                  _buildComment(3),
                  _buildComment(4),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, offset: Offset(0, -2), blurRadius: 6.0)
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                contentPadding: EdgeInsets.all(20.0),
                hintText: "Add a comment",
                prefixIcon: Container(
                  margin: EdgeInsets.all(4.0),
                  width: 48,
                  height: 48,
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
                    backgroundImage: AssetImage(widget.post.authorImageUrl),
                  ),
                ),
                // suffixIcon: Container(
                //   margin: EdgeInsets.only(right: 4.0),
                //   width: 70.0,
                //   child: FlatButton(
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(30.0),
                //     ),
                //     color: Color.fromRGBO(52, 199, 89, 1),
                //     onPressed: () => print("Post Comment"),
                //     child: Icon(
                //       Icons.send,
                //       size: 25.0,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
                suffixIcon: Icon(
                  Icons.send,
                  size: 25.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
