
import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/screens/welcome_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Testing login and register button', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(WelcomeScreen());

    // Verify
    final button = tester.widget<RoundedButton>(find.byType(RoundedButton));
    final button2 = tester.widget<RoundedButton>(find.byType(RoundedButton));

    //  then
    expect(button.title, 'Log In');
    expect(button2.title, 'register');
     // expect(find.text('Lets chat'), findsOneWidget);

    // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
