import 'package:anabolix_app/models/brand_model.dart';
import 'package:flutter/material.dart';

class SingleBrand extends StatelessWidget {
  final BrandModel brand;

  const SingleBrand({
    Key key,
    this.brand,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appbarTitle'),
      ),
      body: Container(),
    );
  }
}
