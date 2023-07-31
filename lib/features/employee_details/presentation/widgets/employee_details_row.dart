import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EmployeeDetailsrow extends StatelessWidget {
  final String leftString;
  final String rightString;
  const EmployeeDetailsrow(
      {super.key, required this.leftString, required this.rightString});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      child: Row(
        children: [
          SizedBox(
              width: 30.w,
              child: Text(
                leftString,
                style: const TextStyle(fontSize: 16),
              )),
          const Spacer(),
          const Text('-'),
          const Spacer(),
          SizedBox(
            width: 40.w,
            child: Text(
              rightString,
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
