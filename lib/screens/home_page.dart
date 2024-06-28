import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth_v1/services/auth_service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          Container(
            child: Row(
              children: [
                Text("Logout"),
                IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: () async {
                    await Provider.of<AuthService>(context, listen: false).signOut();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Home Page!',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 20),
            Icon(
              Icons.home,
              size: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
