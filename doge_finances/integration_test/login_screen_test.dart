import 'package:doge_finances/app/doge_finances/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'Login screen tests',
    () {
      testWidgets('Open Sign-up page', (tester) async {
        // Arrange
        app.main();
        await tester.pumpAndSettle();
        expect(
            find.textContaining("Don't have an account yet?"), findsOneWidget);

        // Act
        final Finder signupButton = find.textContaining("Sign Up");
        await tester.tap(signupButton);
        await tester.pumpAndSettle();

        // Assert
        expect(find.textContaining('Register'), findsOneWidget);
      });
    },
  );
}
