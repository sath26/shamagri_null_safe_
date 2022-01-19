import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TextFieldWidget extends HookWidget {
  final int maxLines;
  final String? label;
  final String? text;
  final ValueChanged<String>? onChanged;

  const TextFieldWidget({
    Key? key,
    this.maxLines = 1,
    // required this.label,
    this.label,
    // required this.text,
    this.text,
    // required this.onChanged,
    this.onChanged,
  }) : super(key: key);

  // late final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = useTextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.label!,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          maxLines: this.maxLines,
        ),
      ],
    );
  }
}
