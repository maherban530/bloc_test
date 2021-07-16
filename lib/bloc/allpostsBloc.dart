import 'dart:async';
import 'package:bloc_test/modals/allpostsmodal.dart';
import 'package:bloc_test/services/getAllPosts.dart';

class AllPostsBloc {
  final _allPostsController = StreamController<List<AllPosts>>();

  Stream<List<AllPosts>> get allPostStream => _allPostsController.stream;
  List<AllPosts> data;

  AllPostsBloc() {
    posts();
  }

  posts() async {
    data = ItemData().itemsdata;
    print(data);
    _allPostsController.sink.add(data);
  }

  void dispose() {
    _allPostsController.close();
  }
}
