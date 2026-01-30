import 'package:flutter/material.dart';
import 'contacPage.dart';
import 'callPage.dart';
import 'Settings.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    final telegramBlue = const Color(0xFF2AABEE);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          /// 🔷 ШАПКА (как в Telegram)
          Container(
            height: 170,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: telegramBlue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 34,
                    color: Color(0xFF2AABEE),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Иван Иванов',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '+996 700 123 456',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          /// 🔹 ПУНКТЫ МЕНЮ
          drawerItem(
            context,
            icon: Icons.chat,
            title: 'Чаты',
            onTap: () => Navigator.pop(context),
          ),
          drawerItem(
            context,
            icon: Icons.call,
            title: 'Звонки',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CallPage()),
              );
            },
          ),
          drawerItem(
            context,
            icon: Icons.person_2,
            title: 'Контакты',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ContactPage()),
              );
            },
          ),
          const Divider(),
          drawerItem(
            context,
            icon: Icons.settings,
            title: 'Настройки',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Settings()),
              );
            },
          ),
          drawerItem(
            context,
            icon: Icons.help_outline,
            title: 'Помощь',
            onTap: () {},
          ),
        ],
      ),
    );
  }
  /// 🔹 Универсальный пункт меню
  Widget drawerItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.black87),
      title: Text(title),
      onTap: onTap,
      horizontalTitleGap: 8,
    );
  }
}
