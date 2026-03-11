# Color Generator Project

Tap anywhere on the screen and the background color will change. The text in the center also change its color to stay readable (contrast), and it has a "jump" animation when you click

* **Flutter 3.38.1** — the latest stable version.
* **Riverpod** — for state management (I used `StateNotifier`).
* **Freezed** — to make sure the state is immutable and safe.
* **Dartz** — for functional error handling with `Either`.
* **Solid Lints** — to keep the code clean and follow best practices.

## Architecture
1. **Repository Pattern:** I put the random logic in a separate repository. This make it easy to test.
2. **Dependency Injection (DI):** The repository get `Random()` in the constructor. This is good because I can mock it in tests.
3. **Reactive UI:** I used `ref.watch` inside my providers. If the repository or configuration changes, the UI will update automaticly.
4. **Platform-Specific UI:** I used a simple logic to check `kIsWeb`, so the app works good on both Mobile and Web browsers.

## How to Run?

1. Make sure you have Flutter installed (I used 3.38.1).
2. Clone this repo.
3. Run these commands:
```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run