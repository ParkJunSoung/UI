class Profile {
  String name;
  List<String> profileImages;
  String age;
  String location;
  String distance;
  String height;
  String bloodType;
  bool isVerifyMobile;
  String educationLevel;
  String basicOccupation;
  String description;
  String religion;
  String alcohol;
  String smoke;

  Profile({
    this.name,
    this.profileImages,
    this.age,
    this.location,
    this.distance,
    this.height,
    this.bloodType,
    this.isVerifyMobile,
    this.educationLevel,
    this.basicOccupation,
    this.description,
    this.religion,
    this.alcohol,
    this.smoke});

  Profile.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    profileImages = json["profile_images"] != null ? json["profile_images"].cast<String>() : [];
    age = json["age"];
    location = json["location"];
    distance = json["distance"];
    height = json["height"];
    bloodType = json["blood_type"];
    isVerifyMobile = json["is_verify_mobile"];
    educationLevel = json["education_level"];
    basicOccupation = json["basic_occupation"];
    description = json["description"];
    religion = json["religion"];
    alcohol = json["alcohol"];
    smoke = json["smoke"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = name;
    map["profile_images"] = profileImages;
    map["age"] = age;
    map["location"] = location;
    map["distance"] = distance;
    map["height"] = height;
    map["blood_type"] = bloodType;
    map["is_verify_mobile"] = isVerifyMobile;
    map["education_level"] = educationLevel;
    map["basic_occupation"] = basicOccupation;
    map["description"] = description;
    map["religion"] = religion;
    map["alcohol"] = alcohol;
    map["smoke"] = smoke;
    return map;
  }

}