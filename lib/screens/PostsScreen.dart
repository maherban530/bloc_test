import 'package:bloc_test/bloc/allpostsBloc.dart';
import 'package:bloc_test/modals/allpostsmodal.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import "package:collection/collection.dart";

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  AllPostsBloc allpostsBloc = AllPostsBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts List"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white70,
            ),
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => PostDetailScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: StreamBuilder(
          stream: allpostsBloc.allPostStream,
          builder: (context, AsyncSnapshot<List<AllPosts>> snapshot) {
            if (snapshot.hasError) {
              return CircularProgressIndicator();
            } else if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            } else
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Card(
                          elevation: 2,
                          child: ListTile(
                              title: Text(
                            "${snapshot.data[index].category_name}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Card(
                          elevation: 0,
                          child: ListTile(
                            title: Text(
                              "${snapshot.data[index].item_name}",
                            ),
                          ),
                        ),
                      ],
                    );
                  });
          }),
    );
  }

  @override
  void dispose() {
    super.dispose();
    allpostsBloc.dispose();
    // postDetailBloc.dispose();
  }
}
