import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  //late TextEditingController nameController;
  TextEditingController nameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _showPassword = false;
  bool _agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
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
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
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
              TextField(
                controller: lastnameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
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
              TextField(
                controller: email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                child: Text("Contrase??a"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
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
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                child: Text(
                    "8 caracteres como m??nimo y no olvides incluir un n??mero"),
              ),
              const SizedBox(
                height: 40,
              ),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                      text: 'Certifico que tengo 18 a??os de edad y acepto el')
                ]),
              ),
              DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.black,
                ),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Checkbox(
                      value: _agree,
                      onChanged: (a) {
                        setState(() {
                          _agree = a!;
                        });
                      },
                    ),
                    const Text(
                        "Certifico que tengo 18 a??os de edad y acepto el "),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Contrato de Usuario",
                        style: TextStyle(color: Color(0xff00C880)),
                      ),
                    ),
                    const Text(" y la "),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Pol??tica de Privacidad.",
                        style: TextStyle(color: Color(0xff00C880)),
                      ),
                    ),
                  ],
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
