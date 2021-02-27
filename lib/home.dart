import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sample App!'),
            RaisedButton(
              onPressed: () {
                Provider.of<AppTheme>(context, listen: false).toggleDarkMode();
              },
              child: Text('Toggle theme mode'),
            ),
          ],
        ),
      ),
    );
  }
}
