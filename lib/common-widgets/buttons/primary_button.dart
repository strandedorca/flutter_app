import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  // Two final properties for the button text and the onPressed callback
  final Widget child;
  final VoidCallback onPressed;

  // Constructor with required parameters
  const PrimaryButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: Theme.of(context).colorScheme.onPrimary,
            width: 2,
          ),
        ),
      ),
      child: child,
    );
  }
}
