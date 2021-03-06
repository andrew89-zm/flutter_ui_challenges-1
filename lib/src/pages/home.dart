import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/ecommerce/ecommerce_detail1.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/ghome.dart';

//pages
import 'package:flutter_ui_challenges/src/pages/login/login1.dart';
import 'package:flutter_ui_challenges/src/pages/login/login2.dart';
import 'package:flutter_ui_challenges/src/pages/login/signup1.dart';
import '../pages/ecommerce/ecommerce1.dart';
import '../pages/ecommerce/ecommerce2.dart';
import '../pages/profile/profile1.dart';

class HomePage extends StatelessWidget {
  
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Flutter UIs'),
          elevation: 0,
        ),
        drawer: _buildDrawer(context),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Text("Welcome to flutter UI, here I plan to create most common mobile UI screens for learning purpose. Open drawer menu to view layouts."),
                Builder(
                  builder: (BuildContext context)=> RaisedButton(
                    child: Text('Open Drawer'),
                    onPressed: ()=>Scaffold.of(context).openDrawer(),
                  )
                )
              ]
            ),
          )
      ));
    }

  Drawer _buildDrawer(BuildContext context) => Drawer(
    child: SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Login One'),
              onTap: () => _openPage(LoginOnePage(), context),
            ),
            Divider(),
            ListTile(
              title: Text('Login Two'),
              onTap: () => _openPage(LoginTwoPage(), context),
            ),
            Divider(),
            ListTile(
              title: Text('Signup One'),
              onTap: () => _openPage(SignupOnePage(), context),
            ),
            Divider(),
            ListTile(
              title: Text('Ecommerce One'),
              onTap: () => _openPage(EcommerceOnePage(), context),
            ),
            Divider(),
            ListTile(
              title: Text('Ecommerce Two'),
              onTap: () => _openPage(EcommerceTwoPage(), context),
            ),
            Divider(),
            ListTile(
              title: Text('Ecommerce Detail one'),
              onTap: () => _openPage(EcommerceDetailOnePage(), context),
            ),
            Divider(),
            ListTile(
              title: Text('Grocery UI Kit'),
              onTap: () => _openPage(GroceryHomePage(), context),
            ),
            Divider(),
            ListTile(
              title: Text('Profile One'),
              onTap: () => _openPage(ProfileOnePage(), context),
            ),
          ],
        ),
      ),
    ),
  );

  void _openPage(Object page, BuildContext context) {
    Navigator.push(context, 
      MaterialPageRoute(
        builder: (context) => page
      )
    );
    // switch(page) {
    //   case 'login1':
    //     break;
    // }
  }
}