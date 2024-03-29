import 'package:flutter/material.dart';

enum Endpoints { items, details }

class FlavorConfig {
  String? appTitle;
  Map<Endpoints, String>? apiEndpoint;
  String? imageLocation;
  ThemeData? theme;

  FlavorConfig(
      {this.appTitle, this.apiEndpoint, this.imageLocation, this.theme});
}
