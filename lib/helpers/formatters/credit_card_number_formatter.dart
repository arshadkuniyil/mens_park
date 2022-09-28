
import 'package:flutter/services.dart';

class CreditCardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var buffer =  StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      int nonZeroIndex = i + 1;
      if (nonZeroIndex % 4 == 0 && nonZeroIndex != text.length) {
        buffer.write(
            ' '); 
      }
    }

    String string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection:  TextSelection.collapsed(offset: string.length));
  }
}
