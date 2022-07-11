import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:moki_tutor/presentation/auto_router/app_router.gr.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      // list of your tab routes
      // routes used here must be declaraed as children
      // routes of /dashboard
      routes: const [
        CoursesScreenRoute(),
        RecordingScreenRoute(),
        AssemblingScreenRoute(),
        ProfileScreenRoute(),
      ],
      builder: (context, child, animation) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        //alterntivly you could use a global key
        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            // the passed child is techinaclly our animated selected-tab page
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                NavigationRail(
                    destinations: const [
                      NavigationRailDestination(
                          label: Text('Курсы'), icon: Icon(Icons.list)),
                      NavigationRailDestination(
                          label: Text('Запись'), icon: Icon(Icons.mic_sharp)),
                      NavigationRailDestination(
                          label: Text('Составление'), icon: Icon(Icons.add)),
                      NavigationRailDestination(
                          label: Text('Профиль'),
                          icon: Icon(Icons.account_circle)),
                    ],
                    extended: true,
                    selectedIndex: _selectedIndex,
                    onDestinationSelected: (int index) {
                      _selectedIndex = index;
                      tabsRouter.setActiveIndex(index);
                    }),
                const VerticalDivider(),
                Expanded(child: child),
              ],
            ),
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   currentIndex: tabsRouter.activeIndex,
          //   onTap: (index) {
          //     // here we switch between tabs
          //     tabsRouter.setActiveIndex(index);
          //   },
          //   items: const [
          //     BottomNavigationBarItem(
          //         label: 'Courses', icon: Icon(Icons.list)),
          //     BottomNavigationBarItem(
          //         label: 'Asembling', icon: Icon(Icons.add)),
          //     BottomNavigationBarItem(
          //         label: 'Profile', icon: Icon(Icons.verified_user_rounded)),
          //   ],
          // )
        );
      },
    );
  }
}
