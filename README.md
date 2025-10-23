# Unit Conversion App

## Overview
This is a simple iOS app built with SwiftUI that allows users to convert between different units of length: Meters, Kilometers, Yards, and Miles. The app provides a clean and intuitive interface for selecting input and output units, entering a value, and instantly viewing the converted result.

The app is designed to be user-friendly, with a focus on simplicity and responsiveness. It uses SwiftUI's declarative syntax to create a dynamic and interactive experience, making unit conversion quick and seamless.

## Features
- **Input and Output Selection**: Choose from four units (Meters, Kilometers, Yards, Miles) using segmented pickers for both input and output.
- **Real-Time Conversion**: The result updates automatically as the user changes the input value or unit selections.
- **Responsive UI**: Built with SwiftUI, the app features a modern interface with a form-based layout.
- **Keyboard Management**: Includes a "Done" button on the toolbar to dismiss the decimal pad keyboard for a smooth user experience.
- **Precision Handling**: Conversion calculations are accurate, using standard conversion factors for each unit pair.

## Screenshots
<div align="center">

| Conversion View 1 | Conversion View 2 |
|-------------------|-------------------|
| <img width="465" height="878" alt="Conversion SS" src="https://github.com/user-attachments/assets/c83c3ac1-dd48-49d6-a4af-2b2da185ab9a" /> | <img width="465" height="878" alt="Conversion SS 2" src="https://github.com/user-attachments/assets/5e302067-b832-4acf-9077-8121e7b0ba5a" /> |

</div>

## How It Works
The app uses a `NavigationStack` to provide a structured layout with a navigation title. The main components include:
- A `TextField` for entering the numeric value to convert, formatted to accept decimal numbers.
- Two `Picker` controls styled as segmented pickers to select input and output units.
- A computed property (`result`) that performs the conversion based on the selected units using a `switch` statement for precise calculations.
- A `LinearGradient` for a visually appealing background.

The conversion logic is implemented in a single computed property, making it easy to maintain and extend. For example, converting from Meters to Kilometers divides the input by 1000, while converting from Miles to Yards multiplies by 1760.

## Code Structure
- **ContentView.swift**: The main SwiftUI view containing the entire app logic and UI.
- **State Management**: Uses `@State` properties to track user input, selected units, and keyboard focus.
- **Conversion Logic**: A `switch` statement handles all possible unit combinations, ensuring accurate results.

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/unit-conversion-app.git
   ```
2. Open the project in Xcode:
   ```bash
   open UnitConversion.xcodeproj
   ```
3. Build and run the app on a simulator or physical iOS device.

## Requirements
- Xcode 15 or later
- iOS 16 or later
- Swift 5.7 or later

## Usage
1. Launch the app.
2. Enter a numeric value in the text field.
3. Select the input unit (e.g., Meters) and output unit (e.g., Kilometers) using the segmented pickers.
4. View the converted result instantly in the result section.
5. Tap "Done" to dismiss the keyboard when finished entering a value.

## Future Enhancements
- Add support for more units (e.g., Feet, Inches).
- Include unit categories beyond length (e.g., weight, temperature).
- Implement a history log of recent conversions.
- Add support for dark/light mode theming.
