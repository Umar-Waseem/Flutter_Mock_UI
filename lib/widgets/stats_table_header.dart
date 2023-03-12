import 'package:flutter/material.dart';

import '../theme/font_themes.dart';

class StatsTableHeader extends StatelessWidget {
  const StatsTableHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Expanded(
          flex: 2,
          child: Text(
            "Date",
            style: tableHeaderTextTheme,
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            "Username",
            style: tableHeaderTextTheme,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "net",
            style: tableHeaderTextTheme,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Source",
            style: tableHeaderTextTheme,
          ),
        ),
      ],
    );
  }
}
