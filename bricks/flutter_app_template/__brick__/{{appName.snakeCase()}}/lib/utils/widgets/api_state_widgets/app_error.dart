import 'package:flutter/material.dart';

class AppError extends StatelessWidget {
  const AppError({
    required this.message,
    this.retry,
    this.isLoading = false,
    super.key,
  });

  final String message;
  final bool isLoading;
  final void Function()? retry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(message, textAlign: TextAlign.center),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: ElevatedButton(
              child: isLoading
                  ? const SizedBox.square(
                      dimension: 24,
                      child: CircularProgressIndicator.adaptive(),
                    )
                  : Text('Try again'),
              onPressed: isLoading ? null : retry,
            ),
          ),
        ],
      ),
    );
  }
}
