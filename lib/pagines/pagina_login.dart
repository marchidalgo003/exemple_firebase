import 'package:exemple_firebase/auth/servei_auth.dart';
import 'package:exemple_firebase/components/boto_auth.dart';
import 'package:exemple_firebase/components/textfield_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PaginaLogin extends StatelessWidget {
  final Function
  const PaginaLogin({super.key});

  void ferLogin(BuildContext context, String email, String password) async {
    String? error = await ServeiAuth().loginAmbEmailIPassword(email, password);

    if (error != null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: const Color.fromARGB(255, 250, 183, 159),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: const Text("Error"),
          content: Text("email i/o password incorrectes."),
        ),
      );
    } else {
      print("Login fet");
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController tecEmail = TextEditingController();
    final TextEditingController tecPassword = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 183, 159),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              const Icon(
                Icons.fireplace,
                size: 120,
                color: Color.fromARGB(255, 255, 240, 218),
              ),

              const SizedBox(height: 25),

              // Frase
              const Text(
                "Benvingut de nou",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 240, 218),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 25),

              // Text divorsi
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 255, 240, 218),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        "Fes login",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 240, 218)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 255, 240, 218),
                      ),
                    ),
                  ],
                ),
              ),

              // Texfield email
              TextfieldAuth(
                controller: tecEmail,
                obscureText: false,
                hintText: "Escriu el teu email",
              ),

              // Texfield password
              TextfieldAuth(
                controller: tecPassword,
                obscureText: true,
                hintText: "Tria un password",
              ),

              const SizedBox(
                height: 10,
              ),

              // no estas registrat
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Encara no ets membre?"),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Registrat",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 40, 71, 97),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              //Boto registrat
              BotoAuth(
                text: "Login",
                onTap: () => ferLogin(context, tecEmail.text, tecPassword.text),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
