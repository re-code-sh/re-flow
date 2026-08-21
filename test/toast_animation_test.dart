import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:taknoghte/ui/widgets/glass.dart';

void main() {
  testWidgets('showToast animates in from top and falls downward on exit', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Builder(
            builder: (context) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    showToast(context, 'The Boulder has fallen! 🪨');
                  },
                  child: const Text('Show'),
                ),
              );
            },
          ),
        ),
      ),
    );

    // Tap button to show toast
    await tester.tap(find.text('Show'));
    await tester.pump(); // Start animation

    // Find Transform widget inside the toast overlay
    expect(find.text('The Boulder has fallen! 🪨'), findsOneWidget);

    // Check initial entering transform (offsetY < 0, entering from top)
    Transform transform = tester.widget(
      find.ancestor(
        of: find.text('The Boulder has fallen! 🪨'),
        matching: find.byType(Transform),
      ),
    );
    expect(transform.transform.getTranslation().y, lessThan(0.0));

    // Pump forward to complete entrance (380ms)
    await tester.pump(const Duration(milliseconds: 400));
    transform = tester.widget(
      find.ancestor(
        of: find.text('The Boulder has fallen! 🪨'),
        matching: find.byType(Transform),
      ),
    );
    // At resting state, offsetY should be 0.0
    expect(transform.transform.getTranslation().y, closeTo(0.0, 0.01));

    // Advance during display duration (2200ms)
    await tester.pump(const Duration(milliseconds: 2200));

    // Toast starts exit animation: should translate downward (offsetY > 0, falling!)
    await tester.pump(const Duration(milliseconds: 150));
    transform = tester.widget(
      find.ancestor(
        of: find.text('The Boulder has fallen! 🪨'),
        matching: find.byType(Transform),
      ),
    );
    expect(transform.transform.getTranslation().y, greaterThan(0.0));

    // Finish exit animation (380ms total exit)
    await tester.pump(const Duration(milliseconds: 300));
    await tester.pumpAndSettle();

    // Toast should now be completely dismissed from overlay
    expect(find.text('The Boulder has fallen! 🪨'), findsNothing);
  });

  testWidgets(
    'showToast with action button triggers action and falls on exit',
    (tester) async {
      var actionClicked = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return Center(
                  child: ElevatedButton(
                    onPressed: () {
                      showToast(
                        context,
                        'حذف شد',
                        actionLabel: 'برگردان',
                        onAction: () => actionClicked = true,
                      );
                    },
                    child: const Text('Show Action'),
                  ),
                );
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text('Show Action'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 400));

      expect(find.text('حذف شد'), findsOneWidget);
      expect(find.text('برگردان'), findsOneWidget);

      // Tap action
      await tester.tap(find.text('برگردان'));
      await tester.pump();
      expect(actionClicked, isTrue);

      // Advance partially during exit
      await tester.pump(const Duration(milliseconds: 150));
      final Transform transform = tester.widget(
        find.ancestor(
          of: find.text('حذف شد'),
          matching: find.byType(Transform),
        ),
      );
      expect(transform.transform.getTranslation().y, greaterThan(0.0));

      await tester.pumpAndSettle();
      expect(find.text('حذف شد'), findsNothing);
    },
  );
}
