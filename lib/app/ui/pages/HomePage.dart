import 'package:flutter/material.dart';
import 'package:sicte_sas_ccot/app/ui/widgets/AppDrawer.dart';
import 'package:sicte_sas_ccot/app/ui/pages/MyHomeContent.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _title = "Inicio";
  Widget _body = const MyHomeContent();

  void _navigate(String title, Widget page) {
    setState(() {
      _title = title;
      _body = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      drawer: AppDrawer(
        onSelect: (title, page) {
          Navigator.of(context).pop();
          _navigate(title, page);
        },
      ),
      body: _body,
    );
  }
}
