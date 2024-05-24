import 'package:dars43/utils/app_constants.dart';
import 'package:dars43/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final ValueChanged<bool> onThemeModeChanged;
  const SettingsScreen({
    super.key,
    required this.onThemeModeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sozlamalar"),
      ),
      drawer: CustomDrawer(
        onThemeModeChanged: onThemeModeChanged,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SwitchListTile(
              value: AppConstants.themeMode == ThemeMode.dark,
              onChanged: (value) {
                onThemeModeChanged(value);
              },
              title: const Text("Tungi holat"),
            ),
          ],
        ),
      ),
    );
  }
}
