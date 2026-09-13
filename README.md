# Flutter E-Commerce Prototype

*A Flutter mobile app prototype demonstrating key e-commerce features: product browsing, shopping cart management, and user authentication.*

This project serves as a learning and experimentation platform for Flutter's UI capabilities, state management, and integration patterns.

## Features

- **Product Grid View** — a scrolling grid view showcasing available products with images, names, and prices
- **Shopping Cart Management** — add, remove, and update products in the cart, with real-time quantity and total price updates
- **User Authentication** — login and registration functionality using a mock backend, with persistent user session management
- **Product Details Page** — detailed product information, including descriptions, reviews, and related products
- **Search and Filtering** — search products by name or category, with filtering options for price and rating

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | Flutter |
| Language | Dart (SDK `>=2.1.0 <3.0.0`, per `pubspec.yaml`) |
| Packages | `cupertino_icons` |
| Backend | Mock/simulated backend for demonstration purposes |

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK `>=2.1.0 <3.0.0` (as declared in `pubspec.yaml`)
- Android Studio / Xcode (for running on an emulator or device)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/gokulKumbakkara/Flutter-Prototope--Ecommerce.git
   ```
2. Navigate to the project directory:
   ```bash
   cd Flutter-Prototope--Ecommerce
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Launch the app:
   ```bash
   flutter run
   ```

## Usage

1. Launch the app on a physical device or emulator
2. Browse products, add to cart, and manage cart contents
3. Login or register to access user-specific features
4. Search and filter products by various criteria

## Project Structure

- `android/` — Android-specific project files
- `assets/` — image and other media assets used in the app
- `ios/` — iOS-specific project files
- `lib/` — app logic and UI code
- `screens/` — individual screen components, such as product grid and cart management
- `test/` — automated tests for the app

## Contributing

To contribute to the Flutter E-Commerce Prototype, please:
1. Fork the repository
2. Create a new branch: `git branch feature/your-feature`
3. Commit changes: `git commit -m "Your meaningful commit message"`
4. Submit a pull request with a detailed description of your changes
