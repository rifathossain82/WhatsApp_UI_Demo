import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_demo/src/model/chat_data.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/app_constants.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/color.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/styles.dart';
import 'package:whatsapp_ui_demo/src/view/screen/calls_screen/calls_screen.dart';
import 'package:whatsapp_ui_demo/src/view/screen/chat_screen/chat_screen.dart';
import 'package:whatsapp_ui_demo/src/view/screen/share_story_screen/share_story_screen.dart';
import 'package:whatsapp_ui_demo/src/view/screen/status_screen/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 4,
      initialIndex: 1,
      vsync: this,
    );
    super.initState();
  }

  List<Tab> tabs = const[
    Tab(icon: Icon(Icons.camera_alt,)),
    Tab(child: Text('CHATS', style: TextStyle(fontWeight: FontWeight.w700))),
    Tab(child: Text('STATUS', style: TextStyle(fontWeight: FontWeight.w700),)),
    Tab(child: Text('CALLS', style: TextStyle(fontWeight: FontWeight.w700),)),
  ];

  List<Widget> pages = [
    ShareStoryScreen(),
    ChatScreen(),
    StatusScreen(),
    CallsScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, value){
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverSafeArea(
                top: false,
                sliver: SliverAppBar(
                  title: const Text(AppConstants.appName),
                  actions: [
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.search)
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.more_vert)
                    ),
                  ],
                  bottom: TabBar(
                    controller: tabController,
                    indicatorColor: kWhite,
                    indicatorWeight: 3,
                    tabs: tabs,
                  ),
                  pinned: true,
                  floating: true,
                  snap: true,
                  forceElevated: true,
                ),
              ),
            )
          ];
        },
        body: TabBarView(
          controller: tabController,
          children: pages,
        ),
      ),
    );
  }

}
