class Validators {
  static String? emailValidator(String? email) {
    {
      if (email == null || email.isEmpty) {
        return "Please enter email";
      } else if (!email.contains("@")) {
        return "Please enter a valid email";
      }
      return null;
    }
  }

  static String? passwordValidator(String? password) {
    {
      if (password == null || password.isEmpty) {
        return "Please enter password";
      } else if (password.length < 6) {
        return "Please enter at least 6 characters";
      }
      return null;
    }
  }
}
