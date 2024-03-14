import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/bitlocker/bitlocker_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/bitlocker/bitlocker_page.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:yaru_test/yaru_test.dart';

import 'test_bitlocker.dart';

void main() {
  setUpAll(() {
    YaruTestWindow.ensureInitialized();
    registerFlavorMock();
  });

  testWidgets('restart', (tester) async {
    final model = buildBitLockerModel();

    await tester.pumpApp(
      (_) => ProviderScope(
        overrides: [bitLockerModelProvider.overrideWith((_) => model)],
        child: const BitLockerPage(),
      ),
    );

    final context = tester.element(find.byType(BitLockerPage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final restartButton = find.button(l10n.restartIntoWindows);
    expect(restartButton, findsOneWidget);

    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.tap(restartButton);
    await tester.pumpAndSettle();
    verifyNever(model.reboot());

    final dialogButton = find.descendant(
        of: find.byType(AlertDialog),
        matching: find.ul10n((l10n) => l10n.restartLabel));

    await tester.tap(dialogButton);
    await tester.pumpAndSettle();

    expect(find.byType(AlertDialog), findsNothing);
    verify(model.reboot()).called(1);

    await expectLater(windowClosed, completes);
  });

  testWidgets('tap link', (tester) async {
    final model = buildBitLockerModel();

    final urlLauncher = MockUrlLauncher();
    when(urlLauncher.launchUrl('https://help.ubuntu.com/bitlocker'))
        .thenAnswer((_) async => true);
    registerMockService<UrlLauncher>(urlLauncher);

    await tester.pumpApp(
      (_) => ProviderScope(
        overrides: [bitLockerModelProvider.overrideWith((_) => model)],
        child: const BitLockerPage(),
      ),
    );

    await tester.tapLink('help.ubuntu.com/bitlocker');

    verify(urlLauncher.launchUrl('https://help.ubuntu.com/bitlocker'))
        .called(1);
  });
}
