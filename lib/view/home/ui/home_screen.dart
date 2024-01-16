import 'package:cv_flutter/view/home/ui/about_widget.dart';
import 'package:cv_flutter/view/home/ui/header_widget.dart';
import 'package:cv_flutter/view/home/ui/work_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var theme = Theme.of(context);
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
                padding: const EdgeInsets.only(right: 60, left: 60, top: 20),
                child: ListView(
                  children: [
                    HeaderWidget(theme: theme),
                    const SizedBox(height: 20),
                    AboutWidget(theme: theme),
                    const SizedBox(height: 20),
                    WorkWidget(theme: theme)
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
