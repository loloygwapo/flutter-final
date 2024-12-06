import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/loloy.png'),
            ),
            SizedBox(height: 20),
            Text('Roger Asombrado', style: TextStyle(fontSize: 22)),
            Text('asombradoroger3@gmail.com', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
