import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../auto_router/app_router.dart';

class CommonNavigationDrawer extends StatelessWidget {
  const CommonNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(height: 24),
          ListTile(
            title: const Text(
              'Презентации',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              if (context.router.canPop()) {
                context.router.pop();
              }
              context.router.push(const PresentationsRoute());
            },
          ),
          ListTile(
            title: const Text(
              'Каналы',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              if (context.router.canPop()) {
                context.router.pop();
              }
              context.router.push(const ChannelsRoute());
            },
          ),
          ListTile(
            title: const Text(
              'Компании',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              if (context.router.canPop()) {
                context.router.pop();
              }
              context.router.push(const CompaniesRoute());
            },
          ),
          ListTile(
            title: const Text(
              'Профиль',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              if (context.router.canPop()) {
                context.router.pop();
              }
              context.router.push(const ProfileRoute());
            },
          ),
          ListTile(
            title: const Text(
              'Изменить пароль',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              if (context.router.canPop()) {
                context.router.pop();
              }
              context.router.push(const ChangePasswordRoute());
            },
          ),
        ],
      ),
    );
  }
}
