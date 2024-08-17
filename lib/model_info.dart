class ModelInfo {
  String? name;
  String? uid;

  ModelInfo({required this.name, required this.uid});


  // Create a ModelInfo object from a Map
  factory ModelInfo.fromMap(Map<String, dynamic> map) {
    return ModelInfo(
      name: map['name'],
      uid: map['uid'],
    );
  }

  // Convert a ModelInfo object into a Map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'uid': uid,
    };
  }

}
