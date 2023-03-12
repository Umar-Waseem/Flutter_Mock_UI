import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/player_model.dart';
import '../theme/colors.dart';

class DetailSwitchers extends StatefulWidget {
  const DetailSwitchers({
    super.key,
    required this.player,
  });

  final PlayerModel player;

  @override
  State<DetailSwitchers> createState() => _DetailSwitchersState();
}

class _DetailSwitchersState extends State<DetailSwitchers> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    TabController? tabController = DefaultTabController.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TabBar(
        indicator: const BoxDecoration(),
        controller: tabController,
        tabs: [
          Tab(
            child: Container(
              width: screenWidth * 0.42,
              decoration: BoxDecoration(
                border: Border.all(
                  color: tabController.index == 0 ? kDarkGreen : Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: CupertinoButton(
                color: tabController.index == 0
                    ? kLightGreen
                    : Colors.blueGrey.withOpacity(0.1),
                onPressed: () {
                  setState(() {
                    tabController.animateTo(0);
                  });
                },
                borderRadius: BorderRadius.circular(8),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Detail",
                  style: TextStyle(
                    color: tabController.index == 0 ? kDarkGreen : Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              width: screenWidth * 0.42,
              decoration: BoxDecoration(
                border: Border.all(
                  color: tabController.index == 1 ? kDarkGreen : Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: CupertinoButton(
                color: tabController.index == 1
                    ? kLightGreen
                    : Colors.blueGrey.withOpacity(0.1),
                onPressed: () {
                  setState(() {
                    tabController.animateTo(1);
                  });
                },
                borderRadius: BorderRadius.circular(8),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Stats",
                  style: TextStyle(
                    color: tabController.index == 1 ? kDarkGreen : Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




// Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             width: screenWidth * 0.42,
//             decoration: BoxDecoration(
//               border: Border.all(color: kDarkGreen),
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: CupertinoButton(
//               color: kLightGreen,
//               onPressed: () {},
//               borderRadius: BorderRadius.circular(8),
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: const Text(
//                 "Detail",
//                 style: TextStyle(
//                   color: kDarkGreen,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             width: screenWidth * 0.42,
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey),
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: CupertinoButton(
//               color: Colors.blueGrey.withOpacity(0.1),
//               onPressed: () {},
//               borderRadius: BorderRadius.circular(8),
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: const Text(
//                 "Tasks",
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
