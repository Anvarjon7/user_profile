import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/profile_model.dart';
import '../providers/profile_provider.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();
  ProfileModel _profile = ProfileModel();

  @override
  Widget build(BuildContext context) {
    final profileProvider = Provider.of<ProfileProvider>(context);
    _profile = profileProvider.profile;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
          child: ListView(
        children: [],
      )),
    );
  }

  void _saveProfile() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Provider.of<ProfileProvider>(context, listen: false)
          .updateProfile(_profile);
    }
  }

  void _resetProfile() {
    Provider.of<ProfileProvider>(context, listen: false).resetProfile();
  }
}
