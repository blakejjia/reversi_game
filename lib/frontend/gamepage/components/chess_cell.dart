part of 'board/normal.dart';

// 棋盘格子
Widget _chessCell(
  BuildContext context,
  ChessState state,
  int row,
  int col,
  int piece,
) {
  return GestureDetector(
    onTap: () => {context.read<ChessBloc>().add(MoveEvent(row, col))},
    child: Container(
      decoration: BoxDecoration(
        color:
            (row + col) % 2 == 0
                ? Colors.lightBlue.withAlpha(50)
                : Colors.blueAccent.withAlpha(80),
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
                    return SizedBox(
                      height: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: FittedBox(
                          child: Icon(Icons.circle, color: Colors.white),
                        ),
                      ),
                    );
                  case 1:
                    return SizedBox(
                      height: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Icon(Icons.circle, color: Colors.black),
                        ),
                      ),
                    );
                  default:
                    if (piece == state.color * 2) {
                      return SizedBox(
                        height: double.infinity,
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.circle,
                              color: Colors.black.withOpacity(0.1),
                              size: 40,
                            ),
                          ),
                        ),
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
