part of '../game_page.dart';

class ChessBoard extends StatelessWidget {
  final ChessState state;
  const ChessBoard(this.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.purple.withAlpha(45),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8,
            ),
            itemBuilder: (context, index) {
              int row = index ~/ 8;
              int col = index % 8;
              return _chessCell(
                context,
                state,
                row,
                col,
                state.game.board[row][col],
              );
            },
            itemCount: 64,
          ),
        ),
        Text("your player id:${state.player.shortId}"),
        // Text(state.game.player1.toString() +"\n"+ state.game.player2.toString()+"\n" +state.player.toString()),
        Text(
          "your opponent:${state.game.player1.id == state.player.id ? state.game.player2.name : state.game.player1.name}",
        ),
        Text("your color: ${state.color == 1 ? 'white' : state.color == 0 ? 'none' : 'black'}"),
        Text("message: ${state.message}"),
        ElevatedButton(
          onPressed: () {
            context.read<ChessBloc>().add(SetPlayerId());
          },
          child: Text("Set playerID!"),
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
}

_showOpponentIdDialog(BuildContext context) {
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
