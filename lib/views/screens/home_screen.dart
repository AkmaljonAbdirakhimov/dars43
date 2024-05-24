import 'package:dars43/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final ValueChanged<bool> onThemeModeChanged;

  const HomeScreen({
    super.key,
    required this.onThemeModeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bosh Sahifa"),
      ),
      drawer:  CustomDrawer(onThemeModeChanged: onThemeModeChanged),
    );
  }
}
