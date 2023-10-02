import 'package:shared_preferences/shared_preferences.dart';

class UserStateService {
  static const String _nameKey = 'name_key';
  static const String _lastNameKey = 'last_name_key';
  static const String _passwordKey = 'password_key';
  Future<void> signUp(
      {required String name,
      required String lastName,
      required String password}) async {
    //UserName alysh kerek
    // LastName alysh kerek
    // Password alysh kerek
    // Ushul nerselerdi saktap kyush kerek(cashe) paket Shared Preference
    final preference = await SharedPreferences.getInstance();
    preference.setString(_nameKey, name);
    preference.setString(_lastNameKey, lastName);
    preference.setString(_passwordKey, password);
  }

  Future<bool> signIn({
    required String name,
    required String password,
  }) async {
    //Через SignUp болуп сакталган name  менен passwordту окуш керек
    // Эгер _nameKey == name жана _passwordKey == password true кайтарсын
    // else false кайтарсын.
    final preference = await SharedPreferences.getInstance();
    final cashedName = preference.getString(_nameKey);
    final cashedPassword = preference.getString(_passwordKey);
    if (name == cashedName && password == cashedPassword) {
      return true;
    } else {
      return false;
    }
  }
}

final userService = UserStateService();
