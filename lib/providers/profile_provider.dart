import 'package:flutter/foundation.dart';
import 'package:user_profile/models/profile_model.dart';
import 'package:user_profile/services/storage_service.dart';

class ProfileProvider with ChangeNotifier {
  ProfileModel _profile = ProfileModel();

  ProfileModel get profile => _profile;

  void updateProfile(ProfileModel profile) {
    _profile = profile;
    notifyListeners();
    StorageService.saveProfile(profile);
  }

  Future<void> loadProfile() async {
    final loadedProfile = await StorageService.loadProfile();
    if (loadedProfile != null) {
      _profile = loadedProfile;
      notifyListeners();
    }
  }

  void resetProfile() {
    _profile = ProfileModel();
    notifyListeners();
  }
}
