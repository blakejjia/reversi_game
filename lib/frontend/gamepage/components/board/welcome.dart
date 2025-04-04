import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/chess_bloc.dart';

class WelcomeBoard extends StatelessWidget {
  final ChessState state;
  const WelcomeBoard(this.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          (state.player.shortId == 0)
              ? _noID(context, state)
              : _withId(context, state),
    );
  }
}

Widget _noID(BuildContext context, ChessState state) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("Welcome to Chess! ", style: Theme.of(context).textTheme.titleLarge),
      Text(
        "Let's get started by your playerID ",
        style: Theme.of(context).textTheme.titleMedium,
      ),
      ElevatedButton(
        onPressed: () {
          context.read<ChessBloc>().add(SetPlayerId());
        },
        child: Text("get your playerID!"),
      ),
    ],
  );
}

Widget _withId(BuildContext context, ChessState state) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "Your playerID is ${state.player.shortId} ",
        style: Theme.of(context).textTheme.titleLarge,
      ),
      Text(
        "use ID to connect to your opponent!",
        style: Theme.of(context).textTheme.titleMedium,
      ),
      ElevatedButton(
        onPressed: () {
          context.read<ChessBloc>().add(SetPlayerId());
        },
        child: Text("change your ID"),
      ),
      ElevatedButton(
        onPressed: () {
          _showOpponentIdDialog(context);
        },
        child: Text("connect to your opponent!"),
      ),
    ],
  );
}

void _showOpponentIdDialog(BuildContext context) {
  TextEditingController opponentIdController = TextEditingController();
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Enter Opponent ID'),
        content: TextField(
          keyboardType: TextInputType.number,
          controller: opponentIdController,
          decoration: InputDecoration(hintText: "Opponent ID"),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              String opponentId = opponentIdController.text;
              context.read<ChessBloc>().add(FindOpponentEvent(opponentId));
              Navigator.of(context).pop();
            },
            child: Text('Connect'),
          ),
        ],
      );
    },
  );
}
