import 'package:flutter/material.dart';
import 'package:sicte_sas_ccot/app/ui/pages/HomePage.dart';
// import 'package:sicte_sas_ccot/app/ui/pages/dashboard1_page.dart';
// import 'package:sicte_sas_ccot/app/ui/pages/dashboard2_page.dart';
// import 'package:sicte_sas_ccot/app/ui/pages/dashboard3_page.dart';

void main() {
  runApp(const SicteApp());
}

class SicteApp extends StatelessWidget {
  const SicteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sicte CCOT",
      debugShowCheckedModeBanner: false,

      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        // "/dashboard1": (context) => const Dashboard1Page(),
        // "/dashboard2": (context) => const Dashboard2Page(),
        // "/dashboard3": (context) => const Dashboard3Page(),
      },
    );
  }
}
