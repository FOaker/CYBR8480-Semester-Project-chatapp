import 'package:chat_app/screens/login_screen.dart';
import 'package:flutter_test/flutter_test.dart';




void main() {
  testWidgets('login test', (WidgetTester tester) async {
    await tester.pumpWidget(LoginScreen());

    test('Log in state', () {
      // expect(find.byWidget('ModalProgressHUD'));
      // expect(state.isLoggedIn, false);

    });
  });
}
