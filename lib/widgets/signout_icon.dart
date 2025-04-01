import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class SignoutIcon extends StatelessWidget {
  const SignoutIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: IconButton(
        onPressed: () {
          FirebaseAuth.instance.signOut();
        },
        icon: Icon(
          Icons.logout_outlined,
          size: 27,
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
