// import 'package:bloc_test/Credentials.dart';
// import 'package:bloc_test/modals/allpostsmodal.dart';
// import 'package:bloc_test/modals/postDetialModal.dart';
// import 'package:http/http.dart' as http;

// Future<List<AllPosts>> getAllPosts() async {
//   // final response = await http.get(Credentials.baseUrl);
//   final allAnimationItems = <AllPosts>[
//     AllPosts(userId: 1, id: 1, title: 'Appbar Animation', body: 'rrrr'),
//     AllPosts(userId: 1, id: 2, title: 'Animation', body: 'rr'),
//   ];

//   // print("data show: ${response.body}");
//   return allPostsFromJson(allAnimationItems.length.toString());
// }

// // Future<PostDetail> postDetailre(id) async {
// //   final response = await http.get("${Credentials.baseUrl}/$id");
// //   print(response.body);
// //   return postDetailFromJson(response.body);
// // }

import 'package:bloc_test/modals/allpostsmodal.dart';

class ItemData {
  final itemsdata = <AllPosts>[
    AllPosts(
      catgory_id: "1",
      category_name: 'F',
      item_id: "1",
      item_name: 'Blueberries',
    ),
    AllPosts(
      catgory_id: "2",
      category_name: 'M',
      item_id: "2",
      item_name: 'Chicken',
    ),
    AllPosts(
      catgory_id: "3",
      category_name: 'P',
      item_id: "3",
      item_name: 'Lentils',
    ),
    AllPosts(
      catgory_id: "3",
      category_name: 'P',
      item_id: "4",
      item_name: 'Honey',
    ),
    AllPosts(
      catgory_id: "3",
      category_name: 'P',
      item_id: "5",
      item_name: 'Pepitas',
    ),
    AllPosts(
      catgory_id: "4",
      category_name: 'V',
      item_id: "6",
      item_name: 'Cucumber',
    ),
    AllPosts(
      catgory_id: "4",
      category_name: 'V',
      item_id: "7",
      item_name: 'Carrot',
    ),
  ];
}
