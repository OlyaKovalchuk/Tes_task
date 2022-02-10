class PhotoData {
  String? description;
  User? user;
  Urls? urls;

  PhotoData({this.description, this.user, this.urls});

  PhotoData.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    urls = json['urls'] != null ? Urls.fromJson(json['urls']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user'] = user;
    data['description'] = description;
    data['urls'] = urls;
    return data;
  }
}

class User {
  String? name;

  User({this.name});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}

class Urls {
  String? full;
  String? small;

  Urls({this.full, this.small});

  Urls.fromJson(Map<String, dynamic> json) {
    full = json['full'];
    small = json['full'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['full'] = full;
    data['small'] = small;
    return data;
  }
}
