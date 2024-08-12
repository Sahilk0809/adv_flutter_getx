# GetX

## What is GetX

GetX is a powerful and lightweight state management solution for Flutter that simplifies many aspects of app development. Its reactive state management, dependency injection, and routing capabilities make it an excellent choice for building efficient and maintainable Flutter applications.

## Key Features:

- **Reactive State Management**: GetX allows you to create reactive variables that automatically update the UI when their values change. This is achieved using `Rx` types, which can be easily observed and manipulated.
- **Dependency Injection**: GetX provides a powerful and easy-to-use dependency injection system. You can manage the lifecycle of your dependencies and ensure they are available where needed without cluttering your codebase.
- **Route Management**: GetX simplifies navigation in your Flutter app by offering a built-in routing system. This system allows you to manage routes, pass parameters, and handle route transitions seamlessly.
- **Performance**: GetX is designed to be lightweight and efficient. It minimizes the overhead associated with state management, ensuring that your app remains fast and responsive.

## Folder Structure for GetX

```bash
lib/
├── controllers/
│   └── controller.dart
├── models/
    └── modal.dart
├── views/
│   ├── home_page.dart
├── main.dart
```


# Counter App using Getx

<img src="https://github.com/user-attachments/assets/4ee0bdd0-5d71-4449-8826-b1b337d01e08" height=65% width=22%>

https://github.com/user-attachments/assets/7f409da6-e341-4759-b2cd-5ef1f12b5afb

# CRUD Operation using Getx

## Description

In a Flutter app using GetX for managing employee details, CRUD operations are handled through local state management:

- **Create**: Users can add new employee records via a form. The details are stored in a local list maintained by a GetX controller.

- **Read**: Displays the list of employee records directly from the local state. GetX ensures that the UI is updated in real-time as the state changes.

- **Update**: Allows users to modify existing employee details. Changes are made through a form, and the GetX controller updates the local list and refreshes the UI to reflect the changes.

- **Delete**: Enables users to remove employee records from the local list. GetX handles the state update and ensures the UI reflects the removal immediately.

GetX manages the app's state reactively, ensuring a smooth and responsive user experience without the need for a database.

<img src="https://github.com/user-attachments/assets/3f3bf9b4-4666-4fff-ada3-bd6cf4b4e422" height=65% width=22%>
<img src="https://github.com/user-attachments/assets/9bd8f4a3-acef-4c43-a3c4-6cdb0e27f4e8" height=65% width=22%>
<img src="https://github.com/user-attachments/assets/86af29eb-70e0-4a43-860d-895c05eb11a5" height=65% width=22%>
<img src="https://github.com/user-attachments/assets/3a1a6b1e-b386-4b80-bbf5-52faa6b1a8e7" height=65% width=22%>

<a href="https://github.com/Sahilk0809/adv_flutter_getx/tree/master/lib"> Click here for the source code </a>

https://github.com/user-attachments/assets/077bcbf6-3d8b-43f3-ac60-67d56517afa6
