import 'package:flutter/material.dart';

class Companylogo extends StatefulWidget {
  const Companylogo({super.key});
  @override
  State<Companylogo> createState() => _CompanylogoState();
}

class _CompanylogoState extends State<Companylogo> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: 180,
        height: 180,
        decoration: BoxDecoration(
            color: Colors.blueGrey, borderRadius: BorderRadius.circular(90)),
        child: const Center(
          child: Text(
            "Company Logo",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Colors.black54,
                  offset: Offset(0, 4),
                  blurRadius: 6,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
