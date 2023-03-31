import 'package:flutter/material.dart';

class QTextField extends StatefulWidget {
  final String label;
  final String? value;
  final String? hint;
  final String? Function(String?)? validator;
  final bool obscure;
  final InkWell? inkwel;

  final int? maxLength;
  final Function(String) onChanged;

  const QTextField({
    Key? key,
    required this.label,
    this.inkwel,
    this.value,
    this.validator,
    this.hint,
    this.maxLength,
    required this.onChanged,
    this.obscure = false,
  }) : super(key: key);

  @override
  State<QTextField> createState() => _QTextFieldState();
}

class _QTextFieldState extends State<QTextField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.value,
      validator: widget.validator,
      maxLength: widget.maxLength,
      obscureText: widget.obscure,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: const TextStyle(
          color: Colors.blueGrey,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueGrey,
          ),
        ),
        suffixIcon: widget.inkwel!,
        helperText: widget.hint,
      ),
      onChanged: (value) {
        widget.onChanged(value);
      },
    );
  }
}
