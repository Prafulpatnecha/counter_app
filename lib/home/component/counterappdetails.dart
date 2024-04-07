import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/colors.dart';
import '../AppbarDetails/appbardetails.dart';
import '../Containers/containers.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Counter App',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //increment
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        increment++;
                      },
                    );
                    print(increment);
                  },
                  child: containerdetails(),
                ),
              ],
            ),
          ],
        ),
        appBar: appbardetails(),
        body: Align(
          child: Scaffold(
            //decrement
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            increment--;
                          },
                        );
                        print(increment);
                      },
                      child: contanerlastdetails(),
                    ),
                  ],
                ),
              ],
            ),
            body: contanerback(),
          ),
        ),
      ),
    );
  }
}
