import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:joguinho/orc.dart';
import '../hero.dart';

final double TileSize = 32;

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      joystick: Joystick(
        directional: JoystickDirectional(
          color: Color.fromARGB(255, 238, 128, 120),
        ),
        actions: [
          JoystickAction(
            actionId: 1,
            align: JoystickActionAlign.BOTTOM_RIGHT,
            color: Colors.blue,
            size: 50,
            margin: EdgeInsets.only(bottom: 50, right: 50),
            //enableDirection: true,
          )
        ],
      ),
      map: WorldMapByTiled(
        'map/island.json',
        objectsBuilder: {
          'orc': (properties) => Orc(properties.position),
        },
        forceTileSize: Vector2(TileSize, TileSize),
      ),
      player: GameHero(
        Vector2(15 * TileSize, 15 * TileSize),
      ),
      showCollisionArea: false,
    );
  }
}
