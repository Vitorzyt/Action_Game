import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';

import 'game_sprite_sheet.dart';
import 'orc_sprite_sheet.dart';

class Orc extends SimpleEnemy with ObjectCollision {
  bool canMove = true;

  Orc(Vector2 position)
      : super(
          position: position, //required
          size: Vector2(32.0, 32.0), //required
          life: 100,
          speed: 40,
          initDirection: Direction.right,
          animation: SimpleDirectionAnimation(
            idleLeft: OrcSpriteSheet.orcIdleLeft,
            idleRight: OrcSpriteSheet.orcIdleRight, //required
            runLeft: OrcSpriteSheet.orcrunLeft,
            runRight: OrcSpriteSheet.orcrunRight, //required
          ),
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
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (player) {
        if (lastDirection == Direction.right) {
          _executeAttack();
        } else {
          _executeAttackLeft();
        }
      },
      radiusVision: 64,
    );
    super.update(dt);
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
  void die() {
    removeFromParent();
    super.die();
  }

/*
  @override
  void receiveDamage(AttackFromEnum attackFrom, double damage, dynamic from) {
    canMove = false;
    if (lastDirectionHorizontal == Direction.left) {
      animation?.playOnce(
        OrcSpriteSheet.recieveDamageLeft,
        runToTheEnd: true,
        
      );
    } else {
      animation?.playOnce(OrcSpriteSheet.recieveDamageRight, runToTheEnd: true);
    }
  }
   */
}
