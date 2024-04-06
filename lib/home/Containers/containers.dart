import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../util/colors.dart';
//increment button
Widget containerdetails() {
  return Container(
    width: 200,
    height: 200,
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.white10,
          offset: Offset(-20, 20),
          blurStyle: BlurStyle.solid,
          blurRadius: 50,
          spreadRadius: 0,
        ),
      ],
      shape: BoxShape.circle,
      color: Colors.white10,
    ),
    child: Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '$increment👈\n',
              style: const TextStyle(
                fontSize: 50,
                color: Colors.purpleAccent,
              ),
            ),
            const TextSpan(text: 'Increment',style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),
    ),
  );
}

int increment = 0;

Widget contanerback() {
  return Container(
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          indigobottem,
          indigoscreen,
        ],
      ),
    ),
  );
}
//Decrement butten
Widget contanerlastdetails()
{
  return Container(
    height: 90,
    width: 200,
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Colors.cyan,
          offset: Offset(0,0),
          blurRadius: 70,
          blurStyle: BlurStyle.solid,
          spreadRadius: 1,
        )
      ],
      borderRadius: BorderRadius.circular(40),
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.indigo.shade900,
          indigobar,
          indigoany,
        ],
      ),
    ),
    child: const Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Decrement',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
