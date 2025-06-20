import 'package:shamagri_latest_flutter_version/presentation/profile/model/user_model.dart';

class UserPreferences {
  static UserModel myUser = UserModel(
      imagePath:
          'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80',
      name: 'Sarah Abs',
      email: 'sarah.abs@gmail.com',
      about:
          'Certified Personal Trainer and Nutritionist with years of experience in creating effective diets and training plans focused on achieving individual customers goals in a smooth way.',
      isDarkMode: true,
      billButtonIsVisbile: true);
}
