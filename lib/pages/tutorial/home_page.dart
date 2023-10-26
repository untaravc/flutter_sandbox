import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/tutorial/photo_page.dart';
import 'package:flutter_application_1/pages/tutorial/profile_page.dart';

class HomePage extends StatefulWidget {
  static const nameRoute = '/home_page';
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Homes Page")),
      drawer: const DrawerMenu(),
      body: Center(
          child: Column(
        children: [
          Switch.adaptive(
            onChanged: (value) {
              setState(() {
                switchValue = !switchValue;
              });
            },
            value: switchValue,
          ),
          Text(switchValue ? "Switch On" : "Switch Off")
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(ProfilePage.nameRoute);
        },
        child: const Icon(Icons.verified_user),
      ),
    );
  }
}

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 50,
          width: double.infinity,
          color: Colors.amber,
          padding: const EdgeInsets.all(4),
          alignment: Alignment.bottomLeft,
          child: const Text(
            "Menu",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).pushNamed(HomePage.nameRoute);
          },
          leading: const Icon(Icons.home),
          title: const Text("Home"),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).pushNamed(ProfilePage.nameRoute);
          },
          leading: const Icon(Icons.person),
          title: const Text("Profile"),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).pushNamed(PhotoPage.nameRoute);
          },
          leading: const Icon(Icons.photo),
          title: const Text("Photo"),
        )
      ]),
    );
  }
}
