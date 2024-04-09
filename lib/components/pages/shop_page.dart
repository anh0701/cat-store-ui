import 'package:cat_store_ui/components/tokens/color.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.pest_control_rodent_sharp),
        title: SearchBar(
          controller: _searchController,
          hintText: 'Search',
          hintStyle: MaterialStateTextStyle.resolveWith(
              (states) => TextStyle(color: Colors.white)),
          leading: Icon(
            Icons.search,
            color: Colors.white,
          ),
          backgroundColor: MaterialStateColor.resolveWith(
              (states) => ColorsField.inputField),
        ),
      ),
      body: Text('home'),
    );
  }
}
