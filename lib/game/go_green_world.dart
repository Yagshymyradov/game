import 'dart:async';

import 'package:flame/components.dart';
import 'package:game/game/go_green_game.dart';
import 'package:game/sprites/bin.dart';

import '../sprites/player.dart';

class GoGreenWorld extends World with HasGameRef<GoGreenGame> {
  late final Player player;

  @override
  FutureOr<void> onLoad() {
    super.onLoad();

    player = Player();
    add(player);
    add(Bin());
  }
}
