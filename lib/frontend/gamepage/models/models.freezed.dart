// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Player {

 String get id; set id(String value); int get shortId; set shortId(int value); String get name; set name(String value); String? get gameId; set gameId(String? value);
/// Create a copy of Player
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerCopyWith<Player> get copyWith => _$PlayerCopyWithImpl<Player>(this as Player, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Player&&(identical(other.id, id) || other.id == id)&&(identical(other.shortId, shortId) || other.shortId == shortId)&&(identical(other.name, name) || other.name == name)&&(identical(other.gameId, gameId) || other.gameId == gameId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,shortId,name,gameId);

@override
String toString() {
  return 'Player(id: $id, shortId: $shortId, name: $name, gameId: $gameId)';
}


}

/// @nodoc
abstract mixin class $PlayerCopyWith<$Res>  {
  factory $PlayerCopyWith(Player value, $Res Function(Player) _then) = _$PlayerCopyWithImpl;
@useResult
$Res call({
 String id, int shortId, String name, String? gameId
});




}
/// @nodoc
class _$PlayerCopyWithImpl<$Res>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._self, this._then);

  final Player _self;
  final $Res Function(Player) _then;

/// Create a copy of Player
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? shortId = null,Object? name = null,Object? gameId = freezed,}) {
  return _then(Player(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,shortId: null == shortId ? _self.shortId : shortId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gameId: freezed == gameId ? _self.gameId : gameId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}



/// @nodoc
mixin _$Game {

 Player get player1; set player1(Player value); Player get player2; set player2(Player value); List<List<int>> get board; set board(List<List<int>> value); int get currentPlayer; set currentPlayer(int value); String? get winner; set winner(String? value); bool? get gameOver; set gameOver(bool? value);
/// Create a copy of Game
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameCopyWith<Game> get copyWith => _$GameCopyWithImpl<Game>(this as Game, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Game&&(identical(other.player1, player1) || other.player1 == player1)&&(identical(other.player2, player2) || other.player2 == player2)&&const DeepCollectionEquality().equals(other.board, board)&&(identical(other.currentPlayer, currentPlayer) || other.currentPlayer == currentPlayer)&&(identical(other.winner, winner) || other.winner == winner)&&(identical(other.gameOver, gameOver) || other.gameOver == gameOver));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,player1,player2,const DeepCollectionEquality().hash(board),currentPlayer,winner,gameOver);

@override
String toString() {
  return 'Game(player1: $player1, player2: $player2, board: $board, currentPlayer: $currentPlayer, winner: $winner, gameOver: $gameOver)';
}


}

/// @nodoc
abstract mixin class $GameCopyWith<$Res>  {
  factory $GameCopyWith(Game value, $Res Function(Game) _then) = _$GameCopyWithImpl;
@useResult
$Res call({
 Player player1, Player player2, List<List<int>> board, int currentPlayer, String? winner, bool? gameOver
});




}
/// @nodoc
class _$GameCopyWithImpl<$Res>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._self, this._then);

  final Game _self;
  final $Res Function(Game) _then;

/// Create a copy of Game
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? player1 = null,Object? player2 = null,Object? board = null,Object? currentPlayer = null,Object? winner = freezed,Object? gameOver = freezed,}) {
  return _then(Game(
player1: null == player1 ? _self.player1 : player1 // ignore: cast_nullable_to_non_nullable
as Player,player2: null == player2 ? _self.player2 : player2 // ignore: cast_nullable_to_non_nullable
as Player,board: null == board ? _self.board : board // ignore: cast_nullable_to_non_nullable
as List<List<int>>,currentPlayer: null == currentPlayer ? _self.currentPlayer : currentPlayer // ignore: cast_nullable_to_non_nullable
as int,winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as String?,gameOver: freezed == gameOver ? _self.gameOver : gameOver // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}



/// @nodoc
mixin _$Move {

 int get x; set x(int value); int get y; set y(int value); Player get player; set player(Player value);
/// Create a copy of Move
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveCopyWith<Move> get copyWith => _$MoveCopyWithImpl<Move>(this as Move, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Move&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.player, player) || other.player == player));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y,player);

@override
String toString() {
  return 'Move(x: $x, y: $y, player: $player)';
}


}

/// @nodoc
abstract mixin class $MoveCopyWith<$Res>  {
  factory $MoveCopyWith(Move value, $Res Function(Move) _then) = _$MoveCopyWithImpl;
@useResult
$Res call({
 int x, int y, Player player
});




}
/// @nodoc
class _$MoveCopyWithImpl<$Res>
    implements $MoveCopyWith<$Res> {
  _$MoveCopyWithImpl(this._self, this._then);

  final Move _self;
  final $Res Function(Move) _then;

/// Create a copy of Move
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,Object? player = null,}) {
  return _then(Move(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int,player: null == player ? _self.player : player // ignore: cast_nullable_to_non_nullable
as Player,
  ));
}

}


// dart format on
