import 'package:flutter/material.dart';
import 'package:memory_matching_game/src/card.dart';

class CardBoards extends StatelessWidget {
  const CardBoards({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        spacing: 4,
        runSpacing: 4,
        children: [
          CardWidget(),
          CardWidget(),
          CardWidget(),
          CardWidget(isFlipped: false),
          CardWidget(),
          CardWidget(),
          CardWidget(),
          CardWidget(),
          CardWidget(isFlipped: false),
          CardWidget(),
          CardWidget(),
          CardWidget(),
        ],
      ),
    );
  }
}
