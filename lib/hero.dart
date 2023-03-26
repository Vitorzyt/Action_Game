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
      _executeAttack();
    }
    super.joystickAction(event);
  }

  void _executeAttack() {
    simpleAttackMelee(
      damage: 20,
      size: Vector2(32, 32),
      sizePush: 16,
    );
  }
}
