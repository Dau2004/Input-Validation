


### **Video Explanation**

A detailed explanation of the code and its functionality is available in the following video:

[https://drive.google.com/file/d/1F1XKqn-U9oaleyBleixUZYe2gFCxGBI_/view?usp=sharing]

### **Flutter Input Validation Application**

This Flutter application demonstrates input validation with multi-screen navigation. It validates user inputs such as Name, Email, and Phone Number before navigating to the next screen.

---

### **Table of Contents**
1. [Overview](#overview)
2. [Features](#features)
3. [Project Structure](#project-structure)
4. [Setup Instructions](#setup-instructions)
5. [How It Works](#how-it-works)
6. [Video Explanation](#video-explanation)
7. [Contributing](#contributing)

---

### **Overview**

This application is designed to showcase the following:
- Multi-screen navigation in Flutter.
- Input validation for Name, Email, and Phone Number fields.
- Modularized code structure for better maintainability.
- Error messages for invalid inputs.

The app consists of two screens:
1. **First Screen**: Users input their details (Name, Email, Phone Number), which are validated before proceeding.
2. **Second Screen**: Displays the validated data entered by the user.

---

### **Features**

- **Input Validation**: Ensures that users enter valid data for Name, Email, and Phone Number.
- **Error Messages**: Provides meaningful error messages for invalid inputs.
- **Navigation**: Seamless navigation between screens using Flutter's `Navigator`.
- **Modular Code**: Separates logic into different files (`main.dart`, `first_screen.dart`, `second_screen.dart`, `validators.dart`) for clarity and reusability.

---

### **Project Structure**

The project is organized as follows:

```
lib/
├── main.dart                # Entry point of the application
├── screens/                 # Contains screen-specific logic
│   ├── first_screen.dart    # First screen with input fields and validation
│   └── second_screen.dart   # Second screen to display validated data
└── utils/                   # Utility functions and reusable components
    └── validators.dart      # Input validation logic
```

---

### **Setup Instructions**

To run this application on your local machine, follow these steps:

1. **Install Flutter**: Ensure that Flutter is installed on your system. You can download it from the official [Flutter website](https://flutter.dev/docs/get-started/install).

2. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd <project-directory>
   ```

3. **Get Dependencies**:
   Run the following command to install the required dependencies:
   ```bash
   flutter pub get
   ```

4. **Run the App**:
   Connect a device or start an emulator, then run:
   ```bash
   flutter run
   ```

---

### **How It Works**

1. **First Screen**:
   - The user enters their Name, Email, and Phone Number in the input fields.
   - When the "Next" button is pressed, the form is validated using custom validation functions defined in `utils/validators.dart`.
   - If any field fails validation, an error message is displayed below the respective field.

2. **Validation Logic**:
   - **Name**: Must not be empty.
   - **Email**: Must be in a valid email format.
   - **Phone Number**: Must be numeric and exactly 10 digits long.

3. **Second Screen**:
   - If all fields pass validation, the app navigates to the second screen, where the validated data is displayed.
   - A "Back" button allows the user to return to the first screen.

---
