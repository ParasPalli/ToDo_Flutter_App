# Flutter ToDo App with State Management using Provider:
This repository contains a Flutter ToDo App that showcases the use of state management with the Provider package. The application allows users to create, manage, and track tasks using various UI components such as ModalBottomSheet, ListTile, FloatingActionButton (FAB), and more.

## Features:
1. Create, and delete tasks.
2. Mark tasks as completed.
3. Display tasks in a ListView using ListView.Builder and ListTiles.
4. Add new tasks using a FloatingActionButton.
5. Utilize a ModalBottomSheet to edit task details.

## ScreenShots:
For a live working demo of the app, please visit the following link: [Flutter ToDoAppDemo](https://drive.google.com/file/d/1N4D7afLW0GH6Xefp9trLKPvvgIH2FbSR/view?usp=sharing)

![WhatsApp Image 2023-08-07 at 16 12 57](https://github.com/ParasPalli/ToDo_Flutter_App/assets/115391909/55984795-6e87-4733-a9d8-e290a4523c7d)

![WhatsApp Image 2023-08-07 at 16 12 56](https://github.com/ParasPalli/ToDo_Flutter_App/assets/115391909/1d051473-31b5-4b2a-99e0-dffc02995ab4)

![WhatsApp Image 2023-08-07 at 16 12 56](https://github.com/ParasPalli/ToDo_Flutter_App/assets/115391909/43a95976-95e1-4836-9b4d-df7d7d8852bd)



## Prerequisites
Flutter and Dart SDKs installed. You can follow the installation instructions [here](https://docs.flutter.dev/get-started/install).

## State Management
The application utilizes the Provider package for state management. The TaskData class manages the list of tasks and provides methods for adding, updating, and deleting tasks.


## UI Components
* TaskTile: Represents a task in the list using a ListView and ListTile. It displays task details and allows marking tasks as completed.
* TaskForm: Provides a form to add new tasks or edit existing tasks using a ModalBottomSheet.
* FloatingActionButton (FAB): Allows users to add new tasks.
* GestureDetector: LongPress to Delete Task.
