import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/chess_bloc.dart';

part '../chess_cell.dart';

class NormalBoard extends StatelessWidget {
  final ChessState state;
  const NormalBoard(this.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("reversi"),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              context.read<ChessBloc>().add(ExitEvent());
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            _board(state, context),
            _opponentIndicator(state),
            _colorIndicator(state),
          ],
        ),
      ),
    );
  }
}

Widget _board(ChessState state, BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.width,
    child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
      ),
      itemBuilder: (context, index) {
        int row = index ~/ 8;
        int col = index % 8;
        return _chessCell(context, state, row, col, state.game.board[row][col]);
      },
      itemCount: 64,
    ),
  );
}

Widget _opponentIndicator(ChessState state) {
  return Text(
    "opponent:${state.color == 1 ? state.game.player2.name : state.game.player1.name}",
    style: TextStyle(
      fontSize: 20,
      color: Colors.black,
    ),
  );
}

Widget _colorIndicator(ChessState state) {
  if (state.color == 1) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.circle, color: Colors.white),
        const SizedBox(width: 8),
        const Text("White"),
      ],
    );
  } else {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.circle, color: Colors.black),
        const SizedBox(width: 8),
        const Text("Black"),
      ],
    );
  }
}
