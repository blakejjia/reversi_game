part of 'chess_bloc.dart';

@immutable
sealed class ChessEvent {}

class MoveEvent extends ChessEvent {
  final int x;
  final int y;

  MoveEvent(this.x, this.y);
}

class SetPlayerId extends ChessEvent {
  final int? playerId;

  SetPlayerId({this.playerId});
}

class FindOpponentEvent extends ChessEvent {
  final int opponentId;

  FindOpponentEvent(String opponentId) : opponentId = int.parse(opponentId);
}
