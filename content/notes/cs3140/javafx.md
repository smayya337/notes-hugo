---
title: "JavaFX"
weight: 13
---

**JavaFX** is a library to build GUIs in Java. Think Swing, but better. GUIs are tricky -- they involve responding to asynchronous and unpredictable user input, which is different from the clean, linear execution of computers.

I'm bored, so here's the event handling paradigm, *The Little Mermaid*-style:

* There's an invisible **main loop** always checking to see if something has happened, like Scuttle repeatedly asking, "Has Eric kissed Ariel yet?"
* When an **event** (like Eric kissing Ariel) occurs, this triggers a **handler**.
* The handler then starts a **thread** that carries out some action (like undoing Ursula's spell).

It's worth noting that event handling isn't just a GUI thing. Events can take a number of forms besides a user clicking a button or providing an input.

## Basic GUI Elements

* `Stage` -- the main window of the application
* `Scene` -- a particular presentation of the application. There is generally only one `Scene` visible at a time, but you can switch between them depending on what you need.
* `Pane` -- a section contained inside a `Scene`. Each `Scene` can contain one or more `Pane`s.
* `Widget` -- a functional item in the GUI, like a button or form field. `Widget`s are put inside `Pane`s.

## Basic `Widget`s

* `Label` -- displays some text without user interaction
* `Button` -- clickable button with text
* `TextField` -- single-line typing area
* `TextArea` -- multi-line typing area

## Implementation Examples

Getting set up:

```java
import javafx.application.Application; // overall application
import javafx.event.*; // for event handling
import javafx.scene.*; // for scenes
import javafx.scene.control.*; // for buttons and stuff
import javafx.scene.layout.*; // for panes
import javafx.stage.Stage; // for stages

Stage stage = new Stage(); // note that Stage throws a checked exception!
stage.setTitle("Title");
// Add a pane here
pane.getChildren().add(widget); // do this as much as you need
Scene s = new Scene(pane, dimension1, dimension2);
stage.setScene(s);
stage.show();
```

`FlowPane`:

```java
// FlowPane lays out its children in such a way that it wraps at the pane's boundary.
Pane pane = new FlowPane();
pane.setHgap(10); // add horizontal gap of 10 pixels between widgets
pane.setVgap(10); // add vertical gap of 10 pixels between widgets
```

`VBox`:

```java
// VBox lays out its children in a single column.
Pane pane = new VBox();
```

`HBox`:

```java
// HBox lays out its children in a single row.
Pane pane = new HBox();
```

`GridPane`:

```java
// GridPane lays out its children in a grid of a specified size.
Pane pane = new GridPane();
```

`Label`:

```java
Label myLabel = new Label("Some text here");
label.setText("New text!");
```

`TextField`:

```java
TextField input = new TextField();
input.setText("Type something here: ");
String value = input.getText();
```

`TextArea`:

```java
TextArea input = new TextArea();
input.setText("Type something here: ");
String value = input.getText();
```

`Button`:

```java
Button myButton = new Button();
myButton.setText("Some Text"); // text shows up on button
UserDefinedHandler handler = new UserDefinedHandler();
myButton.setOnAction(handler);
```

Event handling:

```java
public class UserDefinedHandler implements EventHandler<ActionEvent> {
    @Override
    public void handle(ActionEvent e) {
        // implement handling logic here
    }
}
```

## FXML

**FXML** is a way to define GUIs in a special file. An FXML file describes the layout of the interface, and it is tightly coupled with the controller (in an MVC architecture). The FXML file is loaded into the application at runtime.

An example FXML line:

```xml
<VBox alignment="CENTER" spacing="1.0" xmlns="http://javafx.com/javafx/16" xmlns:fx="http://javafx.com/fxml/1" fx:controller="edu.virginia.cs.javafx.NumberController">
```

Instance variables in the controller are bound to the FXML file using the `fx:id` attribute:

```xml
<TextField fx:id="input" />
```

In your Java code, you can access the instance variable using the `@FXML` annotation:

```java
@FXML
private TextField input;
```

You can use the `onKeyPressed` attribute to bind a handler to a key press:

```xml
<TextField fx:id="input" onKeyPressed="#handleKeyPressed" />
```

```java
protected void handleKeyPressed(KeyEvent event) {
    // implement handling logic here
}
```

An FXML Controller class should only work with the View -- it can handle actions from the View, update the View, and occasionally call some functions in the model as needed, but nothing else. You shouldn't have any meaningful business logic in there because the Controller is closely linked with the UI. Adding logic would violate the idea of a three-layered architecture.
