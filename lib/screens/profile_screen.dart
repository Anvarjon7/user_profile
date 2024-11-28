import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_profile/providers/profile_provider.dart';
import 'package:user_profile/widgets/profile_form.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final profileProvider = Provider.of<ProfileProvider>(context);

    return Scaffold(
        appBar: AppBar(title: Text("Profile")),
        body: FutureBuilder(
        future: profileProvider.loadProfile(),
    builder:(context,snapshot){
    if(snapshot.connectionState == ConnectionState.waiting){
    return Center(child: CircularProgressIndicator());
    }
    return ProfileForm();
    },
    )
    ,
    );
  }
}