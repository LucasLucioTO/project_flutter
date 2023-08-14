import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneNumberFormatter {
  static MaskTextInputFormatter phoneNumberFormatter = MaskTextInputFormatter(
      mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});

  static MaskTextInputFormatter dateFormatter = MaskTextInputFormatter(
      mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')});
}
