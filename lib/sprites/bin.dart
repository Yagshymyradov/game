import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:game/game/go_green_game.dart';

import 'player.dart';

class Bin extends SpriteComponent with HasGameRef<GoGreenGame>, CollisionCallbacks{
  @override
  Future<void> onLoad() async{
    sprite = await Sprite.load('bin-cycle.jpeg');
    size = Vector2.all(300);
    position = Vector2(0, (gameRef.size.y / 2) - (size.y / 2));
    anchor = Anchor.center;
    add(RectangleHitbox());
  }

  @override
  void onCollisionStart(Set<Vector2> intersectionPoints, PositionComponent other) {
    if(other is Player && other.position.y > position.y){
      other.removeFromParent();
    }
    super.onCollisionStart(intersectionPoints, other);
  }
}