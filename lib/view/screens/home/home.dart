import 'package:annonify/config/Theme/colors.dart';
import 'package:annonify/view/Screens/Home/all_chats.dart';
import 'package:annonify/view/Screens/Home/links.dart';
import 'package:annonify/view/Screens/Home/media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(_tabController),
        body: TabBarView(
          controller: _tabController,
          children: const [
            AllChats(),
            Media(),
            Links(),
          ],
        ));
  }
}

AppBar _buildAppBar(TabController tabController) {
  return AppBar(
    toolbarHeight: 64,
    title: const Text(
      "Annonify",
      style: TextStyle(fontFamily: 'SankofaDisplay', fontSize: 28),
    ),
    leading: IconButton(
      icon: const Icon(
        Icons.search,
        color: ThemeColors.accentColor,
      ),
      onPressed: () {},
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 14),
        child: CircleAvatar(
          child: SvgPicture.asset("assets/image/group_logo.svg"),
        ),
      ),
    ],
    bottom: TabBar(
      labelColor: ThemeColors.textHeading,
      indicatorColor: ThemeColors.accentColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      labelPadding: const EdgeInsets.symmetric(vertical: 14),
      unselectedLabelColor: ThemeColors.textSubHeading,
      controller: tabController,
      dividerColor: Colors.transparent,
      tabs: const [
        Text("All Chats"),
        Text("Media"),
        Text("Links"),
      ],
    ),
  );
}
