import 'package:dars43/views/screens/home_screen.dart';
import 'package:dars43/views/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final ValueChanged<bool> onThemeModeChanged;
  const CustomDrawer({
    super.key,
    required this.onThemeModeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            title: const Text("MENYU"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) {
                    return HomeScreen(
                      onThemeModeChanged: onThemeModeChanged,
                    );
                  },
                ),
              );
            },
            leading: const Icon(Icons.home),
            title: const Text("Bosh Sahifa"),
            trailing: const Icon(
              Icons.chevron_right_rounded,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (ctx) {
                    return SettingsScreen(
                      onThemeModeChanged: onThemeModeChanged,
                    );
                  },
                ),
              );
            },
            leading: const Icon(Icons.settings),
            title: const Text("Sozlamalar"),
            trailing: const Icon(
              Icons.chevron_right_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
