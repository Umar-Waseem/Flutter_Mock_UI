import 'package:flutter/material.dart';
import 'package:mock_ui/controllers/player_controller.dart';
import 'package:mock_ui/utils/extensions.dart';

import '../widgets/detail_swicthers.dart';
import '../widgets/details_area.dart';
import '../widgets/player_title.dart';
import '../widgets/search_field.dart';
import '../widgets/stats_area.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: Column(
            children: [
              50.ph,
              Image.asset(
                height: 150,
                width: 150,
                "assets/team.png",
                fit: BoxFit.cover,
              ),
              20.ph,
              SearchField(searchController: searchController),
              20.ph,
              PlayerTitle(playerName: player.playerName),
              20.ph,
              DetailSwitchers(player: player),
              20.ph,
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  children: [
                    DetailsArea(player: player),
                    StatsArea(player: player),
                  ],
                ),
              )
              // StatsArea(player: player),
            ],
          ),
        ),
      ),
    );
  }
}
