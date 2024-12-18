import '../../../l10n/string_extensions.dart';

import 'string_validators.dart';

mixin EmailPasswordValidators {
  final StringValidators emailSubmitValidator = EmailSubmitRegexValidator();
  final StringValidators passwordSubmitValidator = NonEmptyStringValidator();
  final StringValidators complexPasswordSubmitValidator = PasswordSubmitRegexValidator();

  bool canSubmitEmail(String email) {
    return emailSubmitValidator.isValid(email);
  }

  bool canSubmitPassword(String password) {
    return passwordSubmitValidator.isValid(password);
  }

  bool complexCanSubmitPassword(String password) {
    return complexPasswordSubmitValidator.isValid(password);
  }

  String? emailErrorText(String email) {
    final bool showErrorText = !canSubmitEmail(email);
    final String errorText =
        email.isEmpty ? 'Email cannot be empty' : 'Invalid email format';
    return showErrorText ? errorText : null;
  }

  String? passwordErrorText(String password) {
    final bool showErrorText = !canSubmitPassword(password);
    final String errorText =
        password.isEmpty ? 'Password cannot be empty' : 'Password is too short';
    return showErrorText ? errorText : null;
  }

  String? complexPasswordErrorText(String password) {
    final bool showErrorText = !complexCanSubmitPassword(password);
    return showErrorText ? 'Password non valida'.hardcoded : null;
  }
}
