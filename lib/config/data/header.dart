import 'package:flutter/material.dart';

class Header {
  final String name;
  final String bio;
  final Location location;
  final Phone phone;
  final String email;
  final List<Links> links;
  final String jobTitle;

  Header({
    required this.jobTitle,
    required this.bio,
    required this.location,
    required this.name,
    required this.phone,
    required this.email,
    required this.links,
  });
}

class Location {
  final String address;
  final String locationX;
  final String locationY;

  Location({
    required this.address,
    required this.locationX,
    required this.locationY,
  });
}

class Phone {
  final String code;
  final String number;
  Phone({
    required this.code,
    required this.number,
  });
}

class Links {
  final String name;
  final IconData icon;
  Links(
    this.name, {
    this.icon = Icons.language_outlined,
  });
}
