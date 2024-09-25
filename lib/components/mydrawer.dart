import 'package:flutter/material.dart';
import 'package:myapp/auth/start.dart';
import 'package:myapp/components/drawertile.dart';
import 'package:myapp/pages/external_page.dart';
import 'package:myapp/pages/profile.dart';
import 'package:myapp/pages/settings.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 37, 36, 36),
      child: Column(
        children: [
          DrawerHeader(
            child: Image.asset("images/logodelapp (1).png"),
          ),
          Drawertile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ExternalPage()));
            },
          ),
          Drawertile(
            text: "P R O F I L E",
            icon: Icons.person,
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));},
          ),
          Drawertile(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Settings()));
            },
          ),
          const Spacer(),
          Drawertile(
              text: "L O G O U T",
              icon: Icons.logout,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Start()));
              })
        ],
      ),
    );
  }
}
