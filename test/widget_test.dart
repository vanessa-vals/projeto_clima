// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:projeto_clima/main.dart';

void main() {
  testWidgets('navega para a tela de clima atual', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Clima tempo Senac'), findsOneWidget);
    await tester.tap(find.text('Clima atual'));
    await tester.pumpAndSettle();
    expect(find.text('Clima atual'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Sensação térmica: 28°C'), 200);
    expect(find.text('Sensação térmica: 28°C'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Última atualização: 14:30'),
      300,
    );

    expect(find.text('Última atualização: 14:30'), findsOneWidget);
  });

  testWidgets('navega para a previsão da semana', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Previsão da semana'));
    await tester.pumpAndSettle();
    expect(find.text('Previsão da semana'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Faixa de temperatura'), 100);
    expect(find.text('Faixa de temperatura'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Resumo do dia'), 200);
    expect(find.text('Resumo do dia'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Próximos dias'), 300);
    expect(find.text('Próximos dias'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Sexta'), 100);
    expect(find.text('Sexta'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Terça'), 200);
    expect(find.text('Terça'), findsOneWidget);
  });
}
