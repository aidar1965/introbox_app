import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../auto_router/app_router.dart';
import 'bloc/home_bloc.dart';

import '../../player/course_player_screen.dart';
import '../../player/player_screen.dart';
import '../../player/subject_player_screen.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  HomeBloc? _bloc;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _bloc ??= HomeBloc();
    super.didChangeDependencies();
  }

  // @override
  // void dispose() {
  //   _bloc?.close();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => _bloc!,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) => state.map(
            notInitialized: (_) => const Scaffold(),
            initializationCompleted: (state) {
              if (state.isRefreshed != null) {
                if (state.isRefreshed == true) {
                  _selectedIndex = 0;
                }
              }
              return AutoTabsRouter(
                // list of your tab routes
                // routes used here must be declaraed as children
                // routes of /dashboard
                routes: const [
                  PdfCoursesRoute(),
                  //    SubjectsRoute(),
                  PdfSubjectsRoute(),
                  //    FragmentsRoute(),
                  ProfileRoute()
                ],
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
                          NavigationRail(
                              minExtendedWidth: 160,
                              destinations: [
                                const NavigationRailDestination(
                                    label: Text('Публикации'),
                                    icon: Icon(Icons.list)),
                                // const NavigationRailDestination(
                                //     label: Text('Темы'),
                                //     icon: Icon(Icons.list)),
                                const NavigationRailDestination(
                                    label: Text('Темы'),
                                    icon: Icon(Icons.picture_as_pdf)),
                                // const NavigationRailDestination(
                                //     label: Text('Записи'),
                                //     icon: Icon(Icons.list)),
                                // const NavigationRailDestination(
                                //     label: Text('Новая тема'),
                                //     icon: Icon(Icons.add)),
                                // const NavigationRailDestination(
                                //     label: Text('Новая запись'),
                                //     icon: Icon(Icons.mic_sharp)),
                                state.isAuthorized
                                    ? const NavigationRailDestination(
                                        label: Text('Профиль'),
                                        icon: Icon(Icons.account_circle))
                                    : const NavigationRailDestination(
                                        label: Text('Логин'),
                                        icon: Icon(Icons.login_rounded)),
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
                    state.isPlayerScreenOpened
                        ? PlayerScreen(
                            record: state.record!,
                          )
                        : state.isSubjectPlayerScreeinOpened
                            ? SubjectPlayerScreen(subject: state.subject!)
                            : state.isCoursePlayerScreenOpened
                                ? CoursePlayerScreen(
                                    course: state.course!,
                                    remote: state.remote,
                                  )
                                : const SizedBox()
                  ]);
                },
              );
            },
          ),
        ));
  }
}
