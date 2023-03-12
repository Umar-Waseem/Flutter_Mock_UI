import 'package:flutter/material.dart';

import '../theme/colors.dart';

class PlayerTitle extends StatelessWidget {
  const PlayerTitle({
    super.key,
    required this.playerName,
  });

  final String playerName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDarkGreen,
      height: 60,
      width: double.infinity,
      alignment: Alignment.center,
      child: Text(
        playerName,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
