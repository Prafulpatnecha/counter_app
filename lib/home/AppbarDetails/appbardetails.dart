import 'package:flutter/material.dart';

import '../../util/colors.dart';

AppBar appbardetails() {
  return AppBar(
    backgroundColor: indigobar,
    centerTitle: true,
    leading: const Icon(
      Icons.table_view_outlined,
      color: Colors.white,
      size: 30,
    ),
    title: const Text(
      'Counter App',
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    elevation: 20,
    shadowColor: Colors.cyan,
  );
}
