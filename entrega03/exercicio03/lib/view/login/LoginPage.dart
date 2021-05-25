import 'package:exercicio03/routes/AppRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // children: [
            //   Container(
            //       decoration:
            //           BoxDecoration(borderRadius: BorderRadius.circular(200)),
            //       child: ClipRRect(
            //           borderRadius: BorderRadius.circular(200),
            //           child:
            //               Image.asset('assets/images/book.png', width: 200))),
            //   SizedBox(height: 30),
            //   TextField(
            //     onChanged: (value) => this.email = value,
            //     keyboardType: TextInputType.emailAddress,
            //     decoration: InputDecoration(
            //       labelText: 'Email',
            //       border: UnderlineInputBorder(),
            //       icon: Icon(Icons.person),
            //     ),
            //   ),
            //   SizedBox(height: 20),
            //   TextField(
            //     onChanged: (value) => password = value,
            //     obscureText: true,
            //     decoration: InputDecoration(
            //         labelText: 'Password',
            //         border: UnderlineInputBorder(),
            //         icon: Icon(Icons.security)),
            //   ),
            //   SizedBox(height: 20),
            //   SizedBox(
            //       width: 200.00,
            //       height: 50.00,
            //       child: ElevatedButton(
            //         onPressed: () =>
            //             Navigator.pushNamed(context, AppRoutes.HOME),
            //         child: Text('Logar'),
            //         style: ButtonStyle(
            //             shape:
            //                 MaterialStateProperty.all<RoundedRectangleBorder>(
            //                     RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(30.0),
            //                         side: BorderSide(color: Colors.blue)))),
            //       )),
            //   SizedBox(
            //     width: 200.00,
            //     height: 50.00,
            //     child: ElevatedButton(
            //       onPressed: () =>
            //           Navigator.pushNamed(context, AppRoutes.CADASTRO_USUARIO),
            //       child: Text(
            //         'Criar Conta',
            //         style: TextStyle(color: Colors.black),
            //       ),
            //       style: ButtonStyle(
            //         backgroundColor:
            //             MaterialStateProperty.all<Color>(Colors.white),
            //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //           RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(30.0),
            //             side: BorderSide(color: Colors.blue),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ],
          ),
        ),
      ),
    );
  }
}
