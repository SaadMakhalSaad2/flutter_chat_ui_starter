import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';
import 'package:flutter_chat_ui_starter/widgets/category_selector.dart';
import 'package:flutter_chat_ui_starter/widgets/fav_contacts.dart';
import 'package:flutter_chat_ui_starter/widgets/my_app_bar.dart';
import 'package:flutter_chat_ui_starter/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            )
          ],
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
          title: Text('Chats',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ))),
      body: Column(children: [
        CategorySelector(),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0))),
            child: Column(
              children: [FavouriteContacts(), RecentChats()],
            ),
          ),
        )
      ]),
    );
  }
}
