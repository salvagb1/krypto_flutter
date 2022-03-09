import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _showPassword = false;
  final allCheked = CheckBoxModal(title);

  static get title => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('oso'),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Crea tu cuenta',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                child: Text("Nombre"),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                child: Text("Apellidos"),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                child: Text("Correo electronico"),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                child: Text("Contraseña"),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: TextField(
                  obscureText: _showPassword == false ? true : false,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon: GestureDetector(
                      child: Icon(
                        _showPassword == false
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.black,
                      ),
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                child: Text(
                    "8 caracteres como mínimo y no olvides incluir un número"),
              ),
              const SizedBox(
                height: 40,
              ),
              ListTile(
                leading: Checkbox(
                  value: allCheked.value,
                  onChanged: (value) {
                    setState(() {
                      allCheked.value = !allCheked.value;
                    });
                  },
                ),
                title: Text(
                  allCheked.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Crear cuenta",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff0B2653)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          )),
    );
  }
}

class CheckBoxModal {
  String title =
      "Certifico que tengo 18 años de edad y acepto el Contrato de Usuario y la Política de Privacidad.";
  bool value = false;

  CheckBoxModal(title);
}
