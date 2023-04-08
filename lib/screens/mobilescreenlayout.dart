import 'package:chat_app/colors.dart';
import 'package:chat_app/screens/mobile_chat_screen.dart';
import 'package:chat_app/widgets/contacts_list.dart';
import 'package:flutter/material.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: Text(
              'Whatsapp',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  )),
            ],
            bottom: const TabBar(
                indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(text: 'CHATS'),
                  Tab(
                    text: 'STATUS',
                  ),
                  Tab(
                    text: "CALLS",
                  )
                ]),
          ),
          body: const ContactsList(),
          floatingActionButton: FloatingActionButton(
              backgroundColor: tabColor,
              onPressed: () {},
              child: Icon(
                Icons.message_rounded,
                color: Colors.white,
              )),
        ));
  }
}
