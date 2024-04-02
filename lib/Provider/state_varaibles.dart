// Import necessary Flutter packages
import 'package:flutter/material.dart';

// Create a class for managing navigation state
class NavigationState with ChangeNotifier {
  // Initialize a list to represent the navigation state with three boolean values
  List<bool> _navigationState = [true, false, false];
  int _view = 0;
  bool _loginTaggle = true;

  bool get loginTaggle => _loginTaggle;

  set loginTaggle(bool value) {
    _loginTaggle = value;
    notifyListeners();
  }

  void changLogin(bool value) {
    loginTaggle = value;
  }

  // Getter for accessing the current navigation state
  List<bool> get navigationState => _navigationState;
  int get view => _view;

  // Setter for updating navigation state and notifying listeners
  set navigationState(List<bool> navigationState) {
    _navigationState = navigationState;
    notifyListeners();
  }

  set view(int view) {
    _view = view;
    notifyListeners();
  }

  // Method to update the navigation state based on the selected index
  void changeList(int text_state) {
    // Create a new list to represent the updated navigation state
    List<bool> navigationState_0 = [false, false, false];
    // Set the selected index to true in the updated navigation state
    navigationState_0[text_state] = true;
    // Update the navigation state and notify listeners
    navigationState = navigationState_0;
  }

  void changeView(int text_state) {
    view = text_state;
  }
}
