import 'dart:convert';

import 'package:reversi_game/backend/socket/socket.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:reversi_game/frontend/gamepage/models/models.dart';

part 'chess_event.dart';
part 'chess_state.dart';

class ChessBloc extends Bloc<ChessEvent, ChessState> {
  ChessBloc() : super(ChessState.initial()) {
    WebSocketService wsService = WebSocketService();
    wsService.connect('ws://34.130.52.91/reversi');
    wsService.onMessage("clientId", (data) {
      emit(state.copyWith(player: state.player.copyWith(id: data)));
    });
    wsService.onMessage("playerId", (data) {
      emit(state.copyWith(player: state.player.copyWith(shortId: data)));
    });
    wsService.onMessage("game", (data) {
      final gameData = jsonDecode(data);
      emit(
        state.copyWith(
          game: state.game.copyWith(
            player1: Player.fromJson(gameData['player1']),
            player2: Player.fromJson(gameData['player2']),
            board:
                (gameData['board'] as List)
                    .map((row) => (row as List).map((e) => e as int).toList())
                    .toList(),
            currentPlayer: gameData['currentPlayer'],
            winner: gameData['winner'],
            gameOver: gameData['gameOver'],
          ),
        ),
      );
    });
    wsService.onMessage("message", (data) {
      emit(state.copyWith(message: data));
    });
    wsService.onMessage("setColor", (data) {
      print("setColor: $data");
      emit(state.copyWith(color: data));
    });

    on<MoveEvent>((event, emit) {
      wsService.sendMessage("move", {"x": event.x, "y": event.y});
    });

    on<SetPlayerId>((event, emit) {
      wsService.sendMessage("getPlayerId", null);
    });

    on<FindOpponentEvent>((event, emit) async {
      wsService.sendMessage("connectOpponent", event.opponentId);
    });

    on<ExitEvent>((event, emit) {
      wsService.sendMessage("exit", null);
      emit(state.copyWith(color: 0));
    });
  }
}
