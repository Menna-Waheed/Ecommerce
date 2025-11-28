class AppValidator {
  static String? validateEmail(String? val) {
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[A-Za-z]{2,}$',
    );
    if (val == null || val.trim().isEmpty) {
      return 'this field is required';
    } else if (emailRegex.hasMatch(val) == false) {
      return 'enter valid email';
    } else {
      return null;
    }
  }

  static String? validPassword(String? val) {
    final RegExp passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
    );
    if (val == null || val.trim().isEmpty) {
      return 'this field is required';
    } else if (val.length < 8 || !passwordRegex.hasMatch(val)) {
      return 'strong password please';
    } else {
      return null;
    }
  }

  static String? validRePassword(String? val, String? password) {
    if (val == null || val.trim().isEmpty) {
      return 'this field is required';
    } else if (val != password) {
      return ' password not matching';
    } else {
      return null;
    }
  }

  static String? validphone(String? val) {
    final RegExp phoneRegex = RegExp(r'^\+?[0-9\s\-]{7,15}$');
    if (val == null || val.trim().isEmpty) {
      return 'this field is required';
    } else if (int.tryParse(val.trim()) == null) {
      return 'enter numbers only';
    } else if (val.length != 11) {
      return 'number value must be equel 11 digit';
    } else {
      return null;
    }
  }

  static String? validatName(String? val) {
    final RegExp nameRegex = RegExp(r'^[a-zA-Z0-9,.-]+$');
    if (val == null || val.trim().isEmpty) {
      return 'this field is required';
    } else if (nameRegex.hasMatch(val) == false) {
      return 'enter valid name';
    } else {
      return null;
    }
  }
}
