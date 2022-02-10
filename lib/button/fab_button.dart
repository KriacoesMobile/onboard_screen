part of 'package:coffee/onboard_screen.dart';

class _StartFabButton extends StatelessWidget {
  const _StartFabButton({Key? key, required this.isLastPage, this.onPressed})
      : super(key: key);
  final String _start = 'Get start >>';
  final String _end = 'next';
  final bool isLastPage;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Colors.brown,
      hoverElevation: 12,
      enableFeedback: false,
      onPressed: onPressed,
      label: Text(isLastPage ? _start : _end),
    );
  }
}
