class ProfileModel {
  String name;
  String surname;
  String jobTitle;
  String phone;
  String address;
  String profileLink;
  String avatarPath;
  String visibility;

  ProfileModel({
    this.name = '',
    this.surname = '',
    this.jobTitle = '',
    this.phone = '',
    this.address = '',
    this.profileLink = '',
    this.avatarPath = '',
    this.visibility = '',
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'jobTitle': jobTitle,
      "phone": phone,
      "address": address,
      "profileLink": profileLink,
      "avatarPath": avatarPath,
      "visibility": visibility
    };
  }

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      name: json['name'] ?? '',
      surname: json['surname'] ?? '',
      jobTitle: json['jobTitle'] ?? '',
      phone: json['phone'] ?? '',
      address: json['address'] ?? '',
      profileLink: json['profileLink'] ?? '',
      avatarPath: json['avatarPath'] ?? '',
      visibility: json['visibility'] ?? 'Private',
    );
  }
}
