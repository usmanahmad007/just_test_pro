import 'package:shared_preferences/shared_preferences.dart';

class SubscriptionService {
  static const String _isSubscribedKey = 'is_subscribed';
  static const String _planKey = 'subscription_plan';

  static Future<void> subscribe(String plan) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isSubscribedKey, true);
    await prefs.setString(_planKey, plan);
  }

  static Future<bool> isSubscribed() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_isSubscribedKey) ?? false;
  }

  static Future<String?> getSubscribedPlan() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_planKey);
  }

  static Future<void> clearSubscription() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
