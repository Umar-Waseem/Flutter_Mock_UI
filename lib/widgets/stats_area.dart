import 'package:flutter/material.dart';
import 'package:mock_ui/utils/extensions.dart';

import '../models/player_model.dart';
import '../theme/colors.dart';
import 'stats_table_header.dart';

class StatsArea extends StatefulWidget {
  const StatsArea({super.key, required this.player});

  final PlayerModel player;

  @override
  State<StatsArea> createState() => _StatsAreaState();
}

class _StatsAreaState extends State<StatsArea> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Container(
        // elevation
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    top: 18.0, left: 18.0, right: 18.0, bottom: 10.0),
                child: StatsTableHeader(),
              ),
              10.ph,
              for (var i = 0; i < widget.player.stats.length; i++)
                i % 2 == 0
                    ? Container(
                        width: 100,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          color: kDarkGreen,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 7.0),
                        child: const Text(
                          "Round Two",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    widget.player.stats[i].date,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    widget.player.stats[i].userName,
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    widget.player.stats[i].net,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    widget.player.stats[i].source,
                                  ),
                                ),
                              ],
                            ),
                            10.ph,
                          ],
                        ),
                      ),
            ],
          ),
        ),
      ),
    );
  }
}
