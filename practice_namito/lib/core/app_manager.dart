import 'package:practice_namito/features/constants/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppManager {
  AppManager._();
  static final AppManager _instance = AppManager._();
  static AppManager get instance => _instance;

  Future<SharedPreferences> preferences() async {
    return await SharedPreferences.getInstance();
  }

  Future<void> setToken(
      {required String accessToken, required String refreshToken}) async {
    final prefs = await preferences();
    await prefs.setString(AppConstants.instance.accessToken, accessToken);
    await prefs.setString(AppConstants.instance.refreshToken, refreshToken);
  }

  Future<String?> getToken() async {
    final pref = await preferences();
    final accessToken = pref.getString(AppConstants.instance.accessToken);
    return accessToken;
  }
}
