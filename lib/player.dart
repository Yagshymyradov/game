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

  void move(double deltaX){
    double newX = position.x + deltaX;

    double minX = -(gameRef.size.x / 2) + size.x / 2;
    double maxX = (gameRef.size.x / 2) - size.x / 2;
    newX = newX.clamp(minX, maxX);

    position.x = newX;
  }
}
