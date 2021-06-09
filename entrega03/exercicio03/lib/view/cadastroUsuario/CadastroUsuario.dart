import 'package:exercicio03/customWidgets/CustomRadioListTileButtonsGender.dart';
import 'package:exercicio03/models/User.dart';
import 'package:exercicio03/repository/UserRepository.dart';
import 'package:exercicio03/routes/AppRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroUsuario extends StatefulWidget {
  @override
  State<CadastroUsuario> createState() {
    return CadastroUsuarioState();
  }
}

class CadastroUsuarioState extends State<CadastroUsuario> {
  @override
  Widget build(BuildContext context) {
    return CadastroUsuarioBody();
  }
}

class CadastroUsuarioBody extends StatelessWidget {
  //melhorar isso aqui depois
  String email = '';
  String firstName = '';
  String lastName = '';
  String password = '';

  UserRepository userRepository = new UserRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                onChanged: (value) => email = value,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.person_add_rounded),
                ),
                style: TextStyle(fontSize: 15),
              ),
              TextField(
                onChanged: (value) => firstName = value,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.person),
                ),
                style: TextStyle(fontSize: 15),
              ),
              TextField(
                onChanged: (value) => lastName = value,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.person_add_rounded),
                ),
                style: TextStyle(fontSize: 15),
              ),
              TextField(
                onChanged: (value) => password = value,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.security),
                ),
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200.00,
                height: 50.00,
                child: ElevatedButton(
                  onPressed: () async {
                    User newUser = User(
                        id: null,
                        firstName: this.firstName,
                        lastName: this.lastName,
                        email: this.email,
                        password: this.password,
                        isEnabled: null);

                    print(newUser);

                    var result = await userRepository.store(user: newUser);

                    print(result);

                    if (result) {
                      Navigator.of(context).pushNamed(AppRoutes.USER_LIST);
                    } else {
                      print("erro");
                    }
                  },
                  child: Text(
                    'Criar Conta',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  setState(Null Function() param0) {}
}
