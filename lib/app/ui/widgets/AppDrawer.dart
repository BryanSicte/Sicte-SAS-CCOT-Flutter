import 'package:flutter/material.dart';
import 'package:sicte_sas_ccot/app/ui/widgets/DashboardView.dart';
import 'package:sicte_sas_ccot/app/ui/pages/MyHomeContent.dart';

class AppDrawer extends StatefulWidget {
  final void Function(String title, Widget page) onSelect;

  const AppDrawer({super.key, required this.onSelect});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  int? _expandedIndex;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Sicte CCOT",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Inicio"),
              onTap: () {
                widget.onSelect("Inicio", const MyHomeContent());
              },
            ),

            _buildExpansionTile(
              index: 0,
              icon: Icons.work,
              title: "Operaciones",
              children: [
                ListTile(
                  leading: const Icon(Icons.analytics),
                  title: const Text("Dashboard 2"),
                  onTap: () {
                    widget.onSelect(
                      "Dashboard 2",
                      DashboardView(url: "https://app.powerbi.com/view?r=..."),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.pie_chart),
                  title: const Text("Dashboard 3"),
                  onTap: () {
                    widget.onSelect(
                      "Dashboard 3",
                      DashboardView(url: "https://app.powerbi.com/view?r=..."),
                    );
                  },
                ),
              ],
            ),

            _buildExpansionTile(
              index: 1,
              icon: Icons.settings,
              title: "Administración",
              children: [
                ListTile(
                  leading: const Icon(Icons.group),
                  title: const Text("Usuarios"),
                  onTap: () {
                    widget.onSelect(
                      "Usuarios",
                      DashboardView(url: "https://app.powerbi.com/view?r=..."),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.security),
                  title: const Text("Roles"),
                  onTap: () {
                    widget.onSelect(
                      "Roles",
                      DashboardView(url: "https://app.powerbi.com/view?r=..."),
                    );
                  },
                ),
              ],
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Salir"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionTile({
    required int index,
    required IconData icon,
    required String title,
    required List<Widget> children,
  }) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        key: Key(
          _expandedIndex == index ? "expanded_$index" : "collapsed_$index",
        ),
        leading: Icon(icon),
        title: Text(title),
        tilePadding: const EdgeInsets.symmetric(horizontal: 16),
        childrenPadding: const EdgeInsets.only(left: 10),
        children: children,
        initiallyExpanded: _expandedIndex == index,
        onExpansionChanged: (expanded) {
          setState(() {
            _expandedIndex = expanded ? index : null;
          });
        },
      ),
    );
  }
}
