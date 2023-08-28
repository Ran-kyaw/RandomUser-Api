import 'package:arndomuser/Models/user.dart';
import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  final User userDetail;
  const UserDetail({super.key,required this.userDetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${userDetail.firstName}  ${userDetail.lastName}'),
            Text(userDetail.email),
            Text(userDetail.location),
            Center(
              child: Image.network(userDetail.pictureUrl),
            )
          ],
        ),
      ),
    );
  }
}