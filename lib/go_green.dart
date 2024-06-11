import 'package:flame/camera.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:game/constants.dart';
import 'package:game/player.dart';

class GoGreen extends FlameGame {
  GoGreen({super.children})
      : super(
          camera: CameraComponent.withFixedResolution(
            width: gameWidth,
            height: gameHeight,
          ),
        );

  @override
  Future<void> onLoad() async {
    super.onLoad();

    world.add(Player(
      position: Vector2(-(gameWidth / 4), 0),
      radius: gameWidth / 4,
    ));

    world.add(Player(
      position: Vector2(gameWidth / 4, 0),
      radius: gameWidth / 4,
      color: Colors.blue,
    ));
  }

  @override
  Color backgroundColor() {
    return Colors.green;
  }
}
