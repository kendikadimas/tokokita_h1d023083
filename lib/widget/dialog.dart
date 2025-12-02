import 'package:flutter/material.dart';

class SuccessDialog extends StatelessWidget {
  final String description;
  final VoidCallback okCallback;

  const SuccessDialog({Key? key, required this.description, required this.okCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.check_circle, color: Colors.green, size: 100),
          const SizedBox(height: 16),
          const Text("Success", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Text(description, textAlign: TextAlign.center),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: okCallback, child: const Text("OK")),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class WarningDialog extends StatelessWidget {
  final String description;
  final VoidCallback okCallback;

  const WarningDialog({Key? key, required this.description, required this.okCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.warning, color: Colors.orange, size: 100),
          const SizedBox(height: 16),
          const Text("Warning", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Text(description, textAlign: TextAlign.center),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: okCallback, child: const Text("OK")),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}