import 'package:flutter/material.dart';
import 'package:mock_ui/utils/extensions.dart';

import '../models/player_model.dart';
import 'details_card.dart';
import 'tasks_card.dart';

class DetailsArea extends StatefulWidget {
  const DetailsArea({super.key, required this.player});

  final PlayerModel player;

  @override
  State<DetailsArea> createState() => _DetailsAreaState();
}

class _DetailsAreaState extends State<DetailsArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailsCard(
          player: widget.player,
        ),
        20.ph,
        const TasksCard(),
      ],
    );
  }
}
