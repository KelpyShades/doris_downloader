
import 'package:doris_downloader/core/utils/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InputWidget extends ConsumerWidget {
  final TextEditingController controller;
  final GlobalKey<FormState> formKey;
  const InputWidget({
    super.key,
    required this.controller,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Form(
          key: formKey,
          child: SizedBox(
            width: constraints.maxWidth * 0.8,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Enter URL or paste from clipboard',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a URL';
                }
                return validateUrl(value);
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
            ),
          ),
        );
      },
    );
  }
}
