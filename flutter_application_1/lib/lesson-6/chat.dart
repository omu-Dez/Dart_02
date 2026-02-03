// import 'package:flutter/material.dart';
// import 'contactPage.dart';
// import 'miii.dart';
// import 'appDrawer.dart';
// import 'callPage.dart';

// class Momo extends StatelessWidget {

//   const Momo({
//     super.key,
//     required this.onToggleTheme,
//     required this.themeMode,
//   });
//     final VoidCallback onToggleTheme;
//   final ThemeMode themeMode;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Telegram',
//           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//         ),
//       ),
//       drawer: AppDrawer(),
//       body: ListView.separated(
//         itemCount: chatList.length,
//         itemBuilder: (context, index) {
//           final contact = chatList[index];
//           String firstLetter = contact.name.isNotEmpty
//               ? contact.name[0].toUpperCase()
//               : "";
//           return ListTile(
//             leading: CircleAvatar(
//               radius: 30,
//               backgroundColor: contact.avatar,
//               child: Text(
//                 firstLetter,
//                 style: const TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             title: Text(
//               contact.name,
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
//             ),
//             subtitle: Text(contact.text),
//             trailing: Text(contact.time, style: const TextStyle(fontSize: 10)),
//             onTap: () {},
//           );
//         },
//         separatorBuilder: (context, index) => Divider(
//           height: 1,
//           thickness: 1,
//           indent: 70,
//           endIndent: 10,
//           color: Colors.grey.shade300,
//         ),
//       ),
//       bottomNavigationBar: BottomNavigatorBar(
//         onToggleTheme: onToggleTheme,
//         themeMode: themeMode,
//       ),
//     );
//   }
// }

// class BottomNavigatorBar extends StatelessWidget {
//   final VoidCallback onToggleTheme;
//   final ThemeMode themeMode;

//   const BottomNavigatorBar({
//     super.key,
//     required this.onToggleTheme,
//     required this.themeMode,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       height: 60,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           IconButton(
//             icon: const Icon(Icons.chat_outlined),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (_) => Momo(
//                     onToggleTheme: onToggleTheme,
//                     themeMode: themeMode,
//                   ),
//                 ),
//               );
//             },
//           ),
//           IconButton(
//             icon: const Icon(Icons.person_2_outlined),
//             onPressed: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => ContactPage()),
//             ),
//           ),
//           IconButton(
//             icon: const Icon(Icons.call_outlined),
//             onPressed: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => CallPage()),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
