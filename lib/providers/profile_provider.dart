import 'package:flutter/cupertino.dart';
import 'package:user_profile/models/profile_model.dart';

class ProfileProvider with ChangeNotifier{
  ProfileModel _profile = ProfileModel();

  ProfileModel get profile => _profile;

  void updateProfile(ProfileModel profile){
    _profile = profile;
    notifyListeners();
  }
}