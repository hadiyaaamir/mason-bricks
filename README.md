# Mason Bricks 🧱✨

<br>

A collection of reusable components, or "bricks," for building Flutter applications. These bricks are designed to streamline the development process and enhance code reusability, making it easier to create robust Dart applications.

Mason Bricks is powered by [Felix Angelov's Mason](https://github.com/felangel/mason), a code generation tool for Dart and Flutter. 

<br>


## 🏗️ Bricks 

This project offers two brick templates:

1. **[Flutter App Template](bricks/flutter_app_template/):** <br>
Kickstart your Dart or Flutter project with a basic app structure, essential packages, and boilerplate code.

2. **[Feature Template](bricks/feature_template/):** <br>
Easily create feature folders in your app with options for state management (BLoC, Cubit, or none).


<br>


## 🛠️ Creating Bricks Programmatically 

To demonstrate how you can create bricks programmatically, you can refer to the example code in the [`flutter_app_template.dart`](flutter_app_template.dart) file in this repository. 

The given code generates the flutter_app_template brick with the given variables.

<br>

Here's how to modify the provided code to generate your own bricks, and pass your own variable values:



### 1. Obtain the Brick

First, you need to specify the source of your brick, which can be obtained from a local path, GitHub repository, or BrickHub (a platform for sharing Mason bricks)

#### From a Local Path:
```dart
final brick = Brick.path('/path/to/your/brick'); 
```

#### From Github:

```dart
final brick = final brick = Brick.git(
    GitPath(
        'https://github.com/yourusername/yourbrickrepository.git',
        path: 'path/to/your/brick', (optional)
        ref: 'branch-name' (optional) 
    ),
);
```

#### From Brickhub:

```dart
final brick = Brick.version(name: 'name', version: 'version');
```
    
<br>

### 2. Customise Variables
Next, you can tailor your brick generation by customizing the variables. Modify the variables in the `Map<String, dynamic>` to align the brick with your project's specific requirements. 

<br>

### 3. Generate the Brick

Once you've set up your brick source and customized the variables, you're ready to generate your brick. 

Run the pre-generation hook (if applicable), generate the brick based on your specifications, and then execute the post-generation hook (if applicable).

By following these steps, you can efficiently create customized bricks that align with your project's requirements and streamline your development process.




