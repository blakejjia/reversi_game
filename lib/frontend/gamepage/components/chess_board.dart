part of '../game_page.dart';

class ChessBoard extends StatelessWidget {
  final ChessState state;
  const ChessBoard(this.state, {super.key});

  @override
  Widget build(BuildContext context) {
    if (state.color == 0){
      return WelcomeBoard(state);
    } else {
      return NormalBoard(state);
    }
  }
}

