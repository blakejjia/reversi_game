part of 'chess_bloc.dart';

class ChessState {
  final Player player;
  final Game game;
  final String message;

  ChessState({
    required this.player,
    required this.game,
    required this.message,
  });

  ChessState copyWith({
    Player? player,
    Game? game,
    String? message,
  }) {
    return ChessState(
      player: player ?? this.player,
      game: game ?? this.game,
      message: message ?? this.message,
    );
  }

  factory ChessState.initial() {
    return ChessState(
      player: Player(id: "", shortId: 0, name: ""),
      game: Game(
        player1: Player(id: "", shortId: 0, name: ""),
        player2: Player(id: "", shortId: 0, name: ""),
        board: List.generate(8, (_) => List.filled(8, 0)),
        currentPlayer: 1,
        gameOver: false,
      ),
      message: "",
    );
  }
}