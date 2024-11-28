import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_profile/models/profile_model.dart';

class StorageService {
  static const String _profileKey = "user_profile";

  static Future<void> saveProfile(ProfileModel profile) async {
    final prefs = await SharedPreferences.getInstance();
    final profileJson = jsonEncode(profile.toJson());
    await prefs.setString(_profileKey, profileJson);
  }

  static Future<ProfileModel?> loadProfile() async {
    final prefs = await SharedPreferences.getInstance();
    final profileJson = prefs.getString(_profileKey);
    if (profileJson == null) return null;
    return ProfileModel.fromJson(jsonDecode(profileJson));
  }
}
