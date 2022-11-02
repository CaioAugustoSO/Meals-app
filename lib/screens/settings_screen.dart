import 'package:flutter/material.dart';
import '../components/main_drawer.dart';
import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var settings = Settings();
  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool?) onChanged,
  ) {
    return SwitchListTile(
      value: value,
      onChanged: onChanged,
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Configurações'),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Configurações',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _createSwitch(
                    'Sem Gluten',
                    'Só exibe refeições sem glúten',
                    settings.isGlutenFree,
                    (value) =>
                        setState(() => settings.isGlutenFree = value as bool),
                  ),
                  _createSwitch(
                    'Sem Gluten',
                    'Só exibe refeições sem Lactose',
                    settings.isLactoseFree,
                    (value) =>
                        setState(() => settings.isLactoseFree = value as bool),
                  ),
                  _createSwitch(
                    'Sem Gluten',
                    'Só exibe refeições veganas',
                    settings.isVegan,
                    (value) => setState(() => settings.isVegan = value as bool),
                  ),
                  _createSwitch(
                    'Sem Gluten',
                    'Só exibe refeições Vegetarianas',
                    settings.isVegetarian,
                    (value) =>
                        setState(() => settings.isVegetarian = value as bool),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
