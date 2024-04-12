import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

import '../../auto_router/app_router.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      // list of your tab routes
      // routes used here must be declaraed as children
      // routes of /dashboard
      routes: [PresentationsRoute(), ProfileRoute()],
      builder: (context, child) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        //alterntivly you could use a global key
        return Stack(children: [
          Scaffold(
            body: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 160,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 56,
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                _selectedIndex = 0;
                                tabsRouter.setActiveIndex(0);
                              });
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Презентации',
                                  style: _selectedIndex == 0
                                      ? const TextStyle(fontSize: 16)
                                      : const TextStyle(fontSize: 14),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 56,
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                _selectedIndex = 1;
                                tabsRouter.setActiveIndex(1);
                              });
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Профиль',
                                  style: _selectedIndex == 1
                                      ? const TextStyle(fontSize: 16)
                                      : const TextStyle(fontSize: 14),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(),
                Expanded(child: child),
              ],
            ),
          ),
          // state.isPlayerScreenOpened
          //     ? PlayerScreen(
          //         record: state.record!,
          //       )
          //     : state.isSubjectPlayerScreeinOpened
          //         ? SubjectPlayerScreen(subject: state.subject!)
          //         : state.isCoursePlayerScreenOpened
          //             ? CoursePlayerScreen(
          //                 course: state.course!,
          //                 remote: state.remote,
          //               )
          //             : const SizedBox()
        ]);
      },
    );
  }
}
