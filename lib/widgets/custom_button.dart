import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap, this.isLoading = false})
      : super(key: key);

  final void Function()? onTap;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return (isLoading)
        ? const Center(child: CircularProgressIndicator())
        : GestureDetector(
            onTap: onTap,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(16)),
              child: const Center(
                child: Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
  }
}
