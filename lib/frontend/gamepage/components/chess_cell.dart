part of '../game_page.dart';

// 棋盘格子
Widget _chessCell(BuildContext context, ChessState state,int row, int col, int piece) {
  return GestureDetector(
    onTap: () => {context.read<ChessBloc>().add(MoveEvent(row, col))},
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Stack(
        children: [
          Center(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return RotationTransition(turns: animation, child: child);
              },
              child: () {
                switch (piece) {
                  case -1:
                    return Icon(Icons.circle, color: Colors.white,size: 40,);
                  case 1:
                    return Icon(Icons.circle,size: 40);
                  default:
                    if (piece == state.color*2){
                      return Icon(
                        Icons.circle,
                        color: Colors.black.withOpacity(0.1),
                        size: 40,
                      );
                    }
                    return SizedBox.shrink();
                }
              }(),
            ),
          ),
        ],
      ),
    ),
  );
}
