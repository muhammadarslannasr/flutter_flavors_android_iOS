import 'package:flutter/material.dart';
import 'package:flutter_flavor_example/flavor_config.dart';
import 'package:flutter_flavor_example/main_common.dart';

main() {
  final cookieConfig = FlavorConfig()
    ..appTitle = "Munchy Crunchy"
    ..imageLocation = "assets/images/munchy_crunchy.jpg"
    ..apiEndpoint = {
      Endpoints.items: "api.munchycrunchy.dev/items",
      Endpoints.details: "api.munchycrunchy.dev/items"
    }
    ..theme = ThemeData.dark();

  mainCommon(config: cookieConfig);
}
