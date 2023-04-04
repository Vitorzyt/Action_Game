import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';

import 'game_sprite_sheet.dart';

class GameHero extends SimplePlayer with ObjectCollision {
  GameHero(Vector2 position)
      : super(
          position: position,
          speed: 62,
          life: 100,
          size: Vector2(32.0, 32.0),
          animation: SimpleDirectionAnimation(
              idleLeft: GameSpriteSheet.heroIdleLeft,
              idleRight: GameSpriteSheet.heroIdleRight,
              runRight: GameSpriteSheet.herorunRight,
              runLeft: GameSpriteSheet.herorunLeft),
        ) {
    setupCollision(
      CollisionConfig(
        enable: true,
        collisions: [
          //required
          CollisionArea.rectangle(
            size: Vector2(10, 20),
            align: Vector2(10, 10),
          ),
        ],
      ),
    );
  }

  @override
  void joystickAction(JoystickActionEvent event) {
    if (event.event == ActionEvent.DOWN && event.id == 1) {
      if (lastDirection == Direction.right) {
        _executeAttack();
      } else {
        _executeAttackLeft();
      }
    }
    super.joystickAction(event);
  }

  void _executeAttack() {
    simpleAttackMelee(
      damage: 20,
      size: Vector2(25, 25),
      centerOffset: Vector2(-15, -5),
      sizePush: 16,
      animationRight: GameSpriteSheet.attackRight,
    );
  }

  void _executeAttackLeft() {
    simpleAttackMelee(
      damage: 20,
      size: Vector2(25, 25),
      centerOffset: Vector2(15, -5),
      sizePush: 16,
      animationRight: GameSpriteSheet.attackRight,
    );
  }

  @override
  void render(Canvas canvas) {
    drawDefaultLifeBar(
      canvas,
      borderWidth: 2,
      height: 2,
      align: const Offset(0, -5),
    );
    super.render(canvas);
  }

  @override
  void die() {
    removeFromParent();
    super.die();
  }
}
