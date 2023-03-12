import 'package:mock_ui/widgets/stat_item_model.dart';

import 'detail_model.dart';
import 'task_model.dart';

class PlayerModel {
  final String playerName;
  final List<TaskModel> tasks;
  final List<DetailModel> details;
  final List<StatItemModel> stats;

  PlayerModel({
    required this.playerName,
    required this.tasks,
    required this.details,
    required this.stats,
  });
}
