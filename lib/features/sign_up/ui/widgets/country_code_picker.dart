import 'package:appointment/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

import '../../data/countries.dart';
import '../../data/country_codes_model.dart';

class CountryCodePicker extends StatefulWidget {
  final Function(Country)? getSelectionData;
  const CountryCodePicker({super.key, this.getSelectionData});

  @override
  State<CountryCodePicker> createState() => _CountryCodePickerState();
}

class _CountryCodePickerState extends State<CountryCodePicker> {
  List<DropdownMenuItem> _dropDownItems = [];
  String? _selectedValue;

  void _initialize() {
    _dropDownItems =
        countries
            .map(
              (e) => DropdownMenuItem(
                value: e.alpha2,
                child: Text(style: TextStyle(fontSize: 20), countryCodeToEmoji(e.alpha2)),
              ),
            )
            .toList();

    _selectedValue = countries[4].alpha2;
  }

  @override
  void initState() {
    _initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      icon: Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.secondary),
      iconSize: 30,
      isDense: true,
      dropdownColor: Colors.white,
      elevation: 0,
      value: _selectedValue!,
      items: _dropDownItems,
      onChanged: (v) {
        setState(() => _selectedValue = v);
        final instance = countries.firstWhere((e) => e.alpha2 == v);
        widget.getSelectionData!(instance);
      },
    );
  }
}

String countryCodeToEmoji(String countryCode) {
  return countryCode.codeUnits.map((c) => String.fromCharCode(c + 127397)).join();
}
