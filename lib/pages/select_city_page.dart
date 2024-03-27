import 'package:flutter/material.dart';
import 'package:wtm_weather_app/gen/assets.gen.dart';

class SelectCityPage extends StatelessWidget {
  const SelectCityPage({super.key});

  static route() => MaterialPageRoute(builder: (context) {
        return SelectCityPage();
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select City"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListTile(
            title: Text("Mumbai"),
            trailing: Assets.drizzle.image(width: 30, height: 30),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("22C"),
                Text("Light Drizzle"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
