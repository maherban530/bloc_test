import 'dart:convert';

List<AllPosts> allPostsFromJson(String str) =>
    List<AllPosts>.from(json.decode(str).map((x) => AllPosts.fromJson(x)));

String allPostsToJson(List<AllPosts> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllPosts {
  AllPosts({
    this.catgory_id,
    this.category_name,
    this.item_id,
    this.item_name,
  });

  String catgory_id;
  String category_name;
  String item_id;
  String item_name;

  factory AllPosts.fromJson(Map<String, dynamic> json) => AllPosts(
        catgory_id: json["catgory_id"],
        category_name: json["category_name"],
        item_id: json["item_id"],
        item_name: json["item_name"],
      );

  Map<String, dynamic> toJson() => {
        "catgory_id": catgory_id,
        "category_name": category_name,
        "item_id": item_id,
        "item_name": item_name,
      };
}
