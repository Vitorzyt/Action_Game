import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';

class GameSpriteSheet {
  static Future<SpriteAnimation> get heroIdleLeft => SpriteAnimation.load(
        'arthurPendragon_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(128, 0),
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
          texturePosition: Vector2(0, 128),
        ),
      );

  static Future<SpriteAnimation> get herorunLeft => SpriteAnimation.load(
        'arthurPendragon_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(128, 96),
        ),
      );

  static Future<SpriteAnimation> get attackLeft => SpriteAnimation.load(
        'excalibur_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(8, 32),
        ),
      );

  static Future<SpriteAnimation> get attackRight => SpriteAnimation.load(
        'excalibur_.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.15,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(11, 64),
        ),
      );
}
