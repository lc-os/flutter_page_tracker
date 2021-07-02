import 'package:flutter/widgets.dart';

class PageLoadProvider extends InheritedWidget {

  final String env;

  PageLoadProvider({
    this.env = 'pro',
    required Widget child,
  }): super(child: child);

  @override
  bool updateShouldNotify(PageLoadProvider oldWidget) {
    return env != oldWidget.env;
  }

  static String of(BuildContext context) {
    try {
      return (context.dependOnInheritedWidgetOfExactType<PageLoadProvider>(
          ) as PageLoadProvider)
          .env;
    } catch (err) {
      return "pro";
    }
  }
}