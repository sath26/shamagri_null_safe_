class UserModel {
  final String? imagePath;
  final String? name;
  final String? email;
  final String? about;
  bool isDarkMode = true;
  final bool? billButtonIsVisbile;

  UserModel(
      {this.imagePath,
      this.name,
      this.email,
      this.about,
      required this.isDarkMode,
      this.billButtonIsVisbile});
}
