import 'package:cv_flutter/view/home/ui/header_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Row(
        children: [
          width < 900
              ? const SizedBox()
              : Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.white,
                  ),
                ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: ListView(
                  children: const [
                    HeaderWidget(),
                  ],
                ),
              ),
            ),
          ),
          width < 900
              ? const SizedBox()
              : Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.white,
                  ),
                ),
        ],
      ),
    );
  }
}
