// test/widget_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:crud/main.dart';
import 'package:crud/services/database_service.dart';

void main() {
  testWidgets('MyApp smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => DatabaseService(),
        child: const MyApp(),
      ),
    );

    expect(find.text('Liste des éléments'), findsOneWidget);
  });
}
