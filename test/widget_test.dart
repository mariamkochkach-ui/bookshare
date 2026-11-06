
import 'package:flutter_test/flutter_test.dart';
import 'package:bookshare/main.dart';

void main() {
  testWidgets('BookShare connexion page test',
      (WidgetTester tester) async {

    await tester.pumpWidget(const BookShareApp());

    expect(find.text('BookShare'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Mot de passe'), findsOneWidget);
    expect(find.text('SE CONNECTER'), findsOneWidget);
    expect(find.text("S'inscrire"), findsOneWidget);
  });
}
