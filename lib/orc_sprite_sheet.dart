import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';

class OrcSpriteSheet {
  static Future<SpriteAnimation> get orcIdleLeft => SpriteAnimation.load(
        'mordred_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(96, 0),
        ),
      );

  static Future<SpriteAnimation> get orcIdleRight => SpriteAnimation.load(
        'mordred_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get orcrunRight => SpriteAnimation.load(
        'mordred_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 72),
        ),
      );

  static Future<SpriteAnimation> get orcrunLeft => SpriteAnimation.load(
        'mordred_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(96, 72),
        ),
      );

  static Future<SpriteAnimation> get recieveDamageRight => SpriteAnimation.load(
        'mordred_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(64, 176),
        ),
      );

  static Future<SpriteAnimation> get recieveDamageLeft => SpriteAnimation.load(
        'mordred_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(96, 72),
        ),
      );
}
