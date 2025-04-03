import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@Freezed()
@JsonSerializable()
class Player with _$Player {
  String id;
  int shortId;
  String name;
  String? gameId;

  Player({
    required this.id,
    required this.shortId,
    required this.name,
    this.gameId,
  });

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

@Freezed()
@JsonSerializable()
class Game with _$Game {
  Player player1;
  Player player2;
  List<List<int>> board;
  int currentPlayer;
  String? winner;
  bool? gameOver;

  Game({
    required this.player1,
    required this.player2,
    required this.board,
    required this.currentPlayer,
    this.winner,
    this.gameOver,
  });

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}

@Freezed()
@JsonSerializable()
class Move with _$Move {
  int x;
  int y;
  Player player;

  Move({
    required this.x,
    required this.y,
    required this.player,
  });

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);
}
