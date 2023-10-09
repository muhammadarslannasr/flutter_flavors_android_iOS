import 'package:flutter/material.dart';
import 'package:flutter_flavor_example/flavor_config.dart';
import 'package:flutter_flavor_example/main_common.dart';

main() {
  final coffeeConfig = FlavorConfig()
    ..appTitle = "Beans Factory"
    ..apiEndpoint = {
      Endpoints.items: "random.api.dev/items",
      Endpoints.details: "random.api.dev/item"
    }
    ..imageLocation = "assets/images/coffee_bean.jpg"
    ..theme = ThemeData.light().copyWith(
      primaryColor: const Color(0xFF123456),
      appBarTheme: ThemeData.light().appBarTheme.copyWith(
            backgroundColor: const Color(0xFF654321),
          ),
    );

  mainCommon(config: coffeeConfig);

}
