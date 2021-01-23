part of '../progress_dialog.dart';

class _ProgressTheme extends InheritedWidget {
  final TextStyle textStyle;
  final Color backgroundColor;
  final double radius;
  final TextDirection textDirection;
  final ProgressOrientation orientation;
  final String loadingText;
  final Widget loading;

  const _ProgressTheme({
    this.textStyle,
    this.backgroundColor,
    this.radius,
    this.orientation,
    this.loading,
    this.loadingText,
    TextDirection textDirection,
    Widget child,
  })  : textDirection = textDirection ?? TextDirection.ltr,
        super(child: child);

  _ProgressTheme.origin()
      : this.textStyle = TextStyle(
          fontSize: 16.0,
          color: Colors.white,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.normal,
        ),
        this.backgroundColor = const Color(0xDD000000),
        this.radius = 10.0,
        this.orientation = ProgressOrientation.horizontal,
        this.textDirection = TextDirection.ltr,
        this.loading = null,
        this.loadingText = "请稍候";

  static _ProgressTheme of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<_ProgressTheme>();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}
