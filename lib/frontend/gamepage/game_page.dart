import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reversi_game/frontend/gamepage/bloc/chess_bloc.dart';

import 'components/board/normal.dart';
import 'components/board/welcome.dart';

part 'components/chess_board.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChessBloc, ChessState>(
      builder: (context, state) {
        if (state.player.id == "") {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<ChessBloc>().add(SetPlayerId());
              },
              child: Text('Connect'),
            ),
          );
        }
        return Column(
          children: [
            Expanded(child: ChessBoard(state)),
            Text(state.message),
          ],
        );
      },
    );
  }
}
