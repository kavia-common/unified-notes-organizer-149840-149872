import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_frontend/main.dart';

void main() {
  testWidgets('App launches successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());

    // Verify app bar exists with title
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.text('All Notes'), findsOneWidget);

    // Verify bottom navigation exists
    expect(find.byType(NavigationBar), findsOneWidget);
    expect(find.text('Notes'), findsOneWidget);
    expect(find.text('Tags'), findsOneWidget);
  });
}
