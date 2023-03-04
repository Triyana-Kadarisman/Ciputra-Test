class ElixirsModel {
  int? id;
  String? name;

  ElixirsModel({
    required this.id,
    required this.name,
  });

  ElixirsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

class CiputraModel {
  ElixirsModel? elixirs;
  String? id;
  String? firstname;
  String? lastname;

  CiputraModel({
    required this.elixirs,
    required this.id,
    required this.firstname,
    required this.lastname,
  });

  CiputraModel.fromJson(Map<String, dynamic> json) {
    elixirs = ElixirsModel.fromJson(json['elixirs']);
    id = json['id'];
    firstname = json['firstName'];
    lastname = json['lastName'];
  }

  Map<String, dynamic> toJson() {
    return {
      'elixirs': elixirs!.toJson(),
      'id': id,
      'name': firstname,
      'price': lastname,
    };
  }
}