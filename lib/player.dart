import 'dart:async';

import 'package:flame/components.dart';
import 'package:game/constants.dart';
import 'package:game/game/go_green_game.dart';

class Player extends SpriteComponent with HasGameRef<GoGreenGame>{

  @override
  FutureOr<void> onLoad() async{
    sprite = await Sprite.load('sprite.jpg');
    size = Vector2(100, 200);
    position = Vector2(0, -(gameHeight / 2) + (size.y / 2));
    anchor = Anchor.center;
  }

  @override
  void update(double dt) {
    super.update(dt);

    double newY = position.y + (dt * 400);

    if(newY > (gameRef.size.y / 2) - (size.y / 2)){
      newY = (gameRef.size.y / 2) - (size.y / 2);
    }
    position.y = newY;
  }
}
