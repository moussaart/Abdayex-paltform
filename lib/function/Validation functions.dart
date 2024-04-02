import 'package:flutter/cupertino.dart';
import 'package:ipe_application/generated/l10n.dart';

String? validateEmail(String? email, BuildContext context) {
  RegExp emailRegex = RegExp(r'^[\w\.-]+@[\w-]+\.\w{2,3}(\.\w{2,3})?$');
  final isEmailValid = emailRegex.hasMatch(email ?? '');
  if (!isEmailValid) {
    return S.of(context).emailError;
  }
  return null;
}

String? validatePassword(String? password, BuildContext context) {
  // Ensure the password is not null or empty
  if (password == null || password.isEmpty) {
    return S.of(context).emptyPasswordError;
  }

  // Password should be at least 8 characters long
  if (password.length < 8) {
    return S.of(context).shortPasswordError;
  }

  // Ensure the password contains at least one uppercase letter
  if (!password.contains(RegExp(r'[A-Z]'))) {
    return S.of(context).uppercaseLetterError;
  }

  // Ensure the password contains at least one digit
  if (!password.contains(RegExp(r'[0-9]'))) {
    return S.of(context).numberInPasswordError;
  }

  // If the password passes all validation rules, return null
  return null;
}

String? validatePasswordLogin(String? password, BuildContext context) {
  // Ensure the password is not null or empty
  if (password == null || password.isEmpty) {
    return S.of(context).emptyPasswordError;
  }
  // If the password passes all validation rules, return null
  return null;
}

String? validateConfirmPassword(
    String? password, String? confirmPassword, BuildContext context) {
  // Ensure the confirmed password matches the original password
  if (password == null || confirmPassword == null) {
    return S.of(context).emptyPasswordError;
  }
  if (!(password == confirmPassword)) {
    return S.of(context).passwordsNotMatchError;
  }

  // If the passwords match, return null
  return null;
}
