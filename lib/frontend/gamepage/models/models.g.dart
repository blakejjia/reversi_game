// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
  id: json['id'] as String,
  shortId: (json['shortId'] as num).toInt(),
  name: json['name'] as String,
  gameId: json['gameId'] as String?,
);

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
  'id': instance.id,
  'shortId': instance.shortId,
  'name': instance.name,
  'gameId': instance.gameId,
};

Game _$GameFromJson(Map<String, dynamic> json) => Game(
  player1: Player.fromJson(json['player1'] as Map<String, dynamic>),
  player2: Player.fromJson(json['player2'] as Map<String, dynamic>),
  board:
      (json['board'] as List<dynamic>)
          .map(
            (e) => (e as List<dynamic>).map((e) => (e as num).toInt()).toList(),
          )
          .toList(),
  currentPlayer: (json['currentPlayer'] as num).toInt(),
  winner: json['winner'] as String?,
  gameOver: json['gameOver'] as bool?,
);

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
  'player1': instance.player1,
  'player2': instance.player2,
  'board': instance.board,
  'currentPlayer': instance.currentPlayer,
  'winner': instance.winner,
  'gameOver': instance.gameOver,
};

Move _$MoveFromJson(Map<String, dynamic> json) => Move(
  x: (json['x'] as num).toInt(),
  y: (json['y'] as num).toInt(),
  player: Player.fromJson(json['player'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MoveToJson(Move instance) => <String, dynamic>{
  'x': instance.x,
  'y': instance.y,
  'player': instance.player,
};
