import 'package:blend/components/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:blend/global_provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MainAppBar mainAppBar = MainAppBar();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GlobalProvider>(context);
    final _bottomNavigationKey = provider.bottomNavigationKey;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: mainAppBar.build(context),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Icon(
              Icons.home,
              size: 120,
              color: Colors.white,
            ),
            Text(
              'Home Page',
              style: TextStyle(
                  color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
            ),
            // button
            ElevatedButton(
              onPressed: () {
                provider.signOut();
              },
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}

// this class contains all the data the user sets for the posting process
