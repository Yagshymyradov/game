import 'dart:async';

import 'package:flame/components.dart';
import 'package:game/game/go_green_game.dart';

import '../player.dart';

class GoGreenWorld extends World with HasGameRef<GoGreenGame> {
  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    add(Player());
  }
}
