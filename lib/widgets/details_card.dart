import 'package:flutter/material.dart';
import 'package:mock_ui/utils/extensions.dart';

import '../models/player_model.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    super.key,
    required this.player,
  });

  final PlayerModel player;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ...player.details.map(
                (e) => Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            e.detailName,
                            textAlign: TextAlign.right,
                          ),
                        ),
                        20.pw,
                        Expanded(
                          flex: 2,
                          child: Text(
                            e.detailDescription,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    16.ph,
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
