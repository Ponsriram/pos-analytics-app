# POS Analytics

A Flutter mobile analytics dashboard for restaurant owners and managers to monitor their POS operations in real-time — sales, orders, inventory, employees, shifts, and multi-store performance.

> This app is the analytics/admin companion to the [POS Desktop App](../pos-desktop-app). Target users are **store owners, admins, and managers** (not cashiers or kitchen staff).

---

## Features

- **Dashboard** — Real-time sales totals, order counts, outlet statistics, and order trend charts
- **Orders** — Browse, filter, and inspect all orders with full item and payment breakdowns
- **Reports** — Sales reports and day-close summaries with chart visualisations
- **Inventory** — Stock level monitoring, low-stock and out-of-stock alerts
- **Employees** — Staff directory across all stores
- **Shifts** — Shift history, payment summaries, and cashier reports
- **Stores** — Multi-store switching with per-store analytics
- **AI Agent** — AI-powered insights and Q&A about store performance
- **Light / Dark theme** — Full system-adaptive theming

---

## Tech Stack

| Layer                | Technology                        |
| -------------------- | --------------------------------- |
| Framework            | Flutter 3 / Dart 3                |
| State Management     | Riverpod 3 (`@riverpod` code-gen) |
| Models               | Freezed + json_serializable       |
| Networking           | `http` package with JWT injection |
| Dependency Injection | GetIt                             |
| Local Storage        | SharedPreferences                 |
| Charts               | fl_chart                          |
| Error Handling       | fpdart (`Either<Failure, T>`)     |
| Environment          | flutter_dotenv                    |

---

## Architecture

MVVM + Clean Architecture, feature-first folder structure:

```
View (ConsumerWidget)
  └─► ViewModel (@riverpod AsyncNotifier)
        └─► Repository (@riverpod provider)
              └─► ApiClient (GetIt singleton)
```

- Every provider uses `@riverpod` annotation with code generation (`.g.dart`)
- Every model uses `@freezed` with JSON serialization
- Repositories return `Either<Failure, T>` — no raw exceptions in UI
- ViewModels expose `AsyncValue<T>` for loading / error / data states

---

## Project Structure

```
lib/
├── main.dart
├── init_dependencies.dart
├── core/
│   ├── common/widgets/       # Shared UI components (AppBar, loaders, stat cards…)
│   ├── constants/            # Server constants
│   ├── error/                # Failure & ServerException types
│   ├── models/               # Shared models (User, Store)
│   ├── network/              # ApiClient, ConnectionChecker
│   ├── providers/            # Global providers (currentUser, selectedStore, theme, nav)
│   ├── theme/                # Light & dark AppTheme
│   └── utils/                # Snackbar, date & currency formatters
└── features/
    ├── auth/
    ├── dashboard/
    ├── running_orders/
    ├── online_orders/
    ├── reports/
    ├── inventory/
    ├── employees/
    ├── shifts/
    ├── stores/
    ├── menu/
    ├── management/
    ├── ai_agent/
    ├── profile/
    └── more/
```

Each feature follows the same internal structure:

```
feature/
├── model/         # Freezed data classes
├── repository/    # HTTP + error handling
├── view/
│   ├── pages/     # Full screens
│   └── widgets/   # Feature-specific widgets
└── viewmodel/     # Riverpod AsyncNotifier
```

---

## Getting Started

### Prerequisites

- Flutter SDK `^3.11.1`
- Dart SDK `^3.11.1`
- A running instance of the [POS Backend](../pos-backend) (FastAPI + PostgreSQL)

### Setup

1. **Clone and install dependencies**

   ```bash
   flutter pub get
   ```

2. **Configure environment**

   Create a `.env` file in the project root:

   ```env
   API_BASE_URL=http://localhost:8000
   ```

   > Never commit `.env`. It is listed in `.gitignore`.

3. **Run code generation** (required after any model or provider change)

   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**

   ```bash
   # iOS
   flutter run -d ios

   # Android
   flutter run -d android

   # Web
   flutter run -d chrome
   ```

---

## Code Generation

This project uses `build_runner` for Riverpod, Freezed, and json_serializable:

```bash
# One-time build
dart run build_runner build --delete-conflicting-outputs

# Watch mode during development
dart run build_runner watch --delete-conflicting-outputs
```

Generated files (`*.g.dart`, `*.freezed.dart`) are committed to version control.

---

## Environment Variables

| Variable       | Description                     | Example                    |
| -------------- | ------------------------------- | -------------------------- |
| `API_BASE_URL` | Base URL of the POS backend API | `http://192.168.1.10:8000` |

---

## Related Projects

| Project                                 | Description                      |
| --------------------------------------- | -------------------------------- |
| [`pos-backend`](../pos-backend)         | FastAPI + PostgreSQL backend     |
| [`pos-desktop-app`](../pos-desktop-app) | Flutter desktop POS for cashiers |
| [`pos_app`](../pos_app)                 | Flutter mobile POS app           |
