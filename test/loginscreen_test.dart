import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Testing loginscreen login button', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(LoginScreen());

    // when
    final button = tester.widget<RoundedButton>(find.byType(RoundedButton));

    //  then
    expect(button.title, 'Log In');

  });
}
