import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.weather});

  var weather;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String temperature = "";
  // String? ubication;
  String locationCity = "";

  void Ejemplo(){

    temperature = widget.weather["main"]["temp"].toString();
    locationCity = widget.weather["name"].toString();
  }
  @override
  void initState() {
    // TODO: implement initState
    Ejemplo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(temperature),
      ),
    );
  }
}
