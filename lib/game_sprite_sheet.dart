import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';

class GameSpriteSheet {
  static Future<SpriteAnimation> get heroIdleLeft => SpriteAnimation.load(
        'arthurPendragon_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(96, 0),
        ),
      );

  static Future<SpriteAnimation> get heroIdleRight => SpriteAnimation.load(
        'arthurPendragon_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get herorunRight => SpriteAnimation.load(
        'arthurPendragon_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 72),
        ),
      );

  static Future<SpriteAnimation> get herorunLeft => SpriteAnimation.load(
        'arthurPendragon_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(96, 72),
        ),
      );
}
