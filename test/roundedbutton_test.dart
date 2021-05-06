import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget _wrapWithMaterialApp(RoundedButton appRaisedButton) {
    return TestMaterialAppWidget(
      home: appRaisedButton,
    );
  }


  testWidgets("Testing Rounded_button", (WidgetTester tester) async {
    //  given

    //  when
    await tester.pumpWidget(RoundedButton(title: 'Click me', onPressed: () {}));

    //  then
    expect(find.byType(RoundedButton), findsOneWidget);

  });

    testWidgets("Should see text 'Click me'", (WidgetTester tester) async {
      //  given


      //  when
      await tester.pumpWidget(RoundedButton(title: 'Click me', onPressed: () {}));

      //  then
      expect(find.text('Click me'), findsOneWidget);
    });
}


class TestMaterialAppWidget extends StatelessWidget {
  final Widget home;
  final NavigatorObserver navigatorObserver;

  TestMaterialAppWidget({
    Key key,
    this.home,
    this.navigatorObserver
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Test',
      home: home,
      navigatorObservers: [navigatorObserver ?? TestNavigatorObserver()],
      routes: _testRoutes(),
    );
  }

  Map<String, WidgetBuilder> _testRoutes() {
    return <String, WidgetBuilder>{
      Routes.ANOTHER_SCREEN_ROUTE: (context) => _testRoute(Routes.ANOTHER_SCREEN_ROUTE),
    };
  }

  _testRoute(String routeName) => DummyTestRoute(routeName: routeName);
}

class DummyTestRoute extends StatelessWidget {
  final String routeName;

  DummyTestRoute({Key key, this.routeName}): super(key: key ?? Key(routeName));

  @override
  Widget build(BuildContext context) => Text(routeName);

}

class Routes {
  static const HOME_SCREEN_ROUTE = '/';
  static const ANOTHER_SCREEN_ROUTE = '/another_screen';

  static Map<String, WidgetBuilder> routes() {
    return <String, WidgetBuilder>{
      ANOTHER_SCREEN_ROUTE: (context) => AnotherPage(),
      HOME_SCREEN_ROUTE: (context) => WelcomeScreen(),
    };
  }
}



class AnotherPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Text('Another page')
      ),
    );
  }

}



typedef OnObservation = void Function(Route<dynamic> route, Route<dynamic> previousRoute);

class TestNavigatorObserver extends NavigatorObserver {
  OnObservation onPushed;

  @override
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    if (onPushed != null) {
      onPushed(route, previousRoute);
    }
  }

  attachPushRouteObserver(String expectedRouteName, Function pushCallback) {
    onPushed = (route, previousRoute) {
      final isExpectedRoutePushed = route.settings.name == expectedRouteName;
      // trigger callback if expected route is pushed
      if(isExpectedRoutePushed) { pushCallback(); }
    };
  }
}