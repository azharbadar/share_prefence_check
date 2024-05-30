/// userId : 1
/// id : 1
/// title : "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"
/// body : "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"

// class PostModel {
//   PostModel({
//       num? userId,
//       num? id,
//       String? title,
//       String? body,}){
//     _userId = userId;
//     _id = id;
//     _title = title;
//     _body = body;
// }

//   PostModel.fromJson(dynamic json) {
//     _userId = json['userId'];
//     _id = json['id'];
//     _title = json['title'];
//     _body = json['body'];
//   }
//   num? _userId;
//   num? _id;
//   String? _title;
//   String? _body;
// PostModel copyWith({  num? userId,
//   num? id,
//   String? title,
//   String? body,
// }) => PostModel(  userId: userId ?? _userId,
//   id: id ?? _id,
//   title: title ?? _title,
//   body: body ?? _body,
// );
//   num? get userId => _userId;
//   num? get id => _id;
//   String? get title => _title;
//   String? get body => _body;

//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['userId'] = _userId;
//     map['id'] = _id;
//     map['title'] = _title;
//     map['body'] = _body;
//     return map;
//   }

// }

class PostModel {
  final int id;
  final String title;
  final String body;
  final UserAddress address; // Assuming you have a UserAddress class

  PostModel({
    required this.id,
    required this.title,
    required this.body,
    required this.address,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      address: UserAddress.fromJson(json['address']), // Parse address object
    );
  }
}

class UserAddress {
  final String city;

  UserAddress({
    required this.city,
  });

  factory UserAddress.fromJson(Map<String, dynamic> json) {
    return UserAddress(
      city: json['city'],
    );
  }
}
