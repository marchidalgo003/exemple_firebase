import 'package:exemple_firebase/components/boto_auth.dart';
import 'package:exemple_firebase/components/textfield_auth.dart';
import 'package:flutter/material.dart';

class PaginaRegistre extends StatelessWidget {
  const PaginaRegistre({super.key});

  void ferRegistre() {}

  @override
  Widget build(BuildContext context) {
    final TextEditingController tecEmail = TextEditingController();
    final TextEditingController tecPassword = TextEditingController();
    final TextEditingController tecConfPass = TextEditingController();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 183, 159),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Icon(
                Icons.fireplace,
                size: 120,
                color: Color.fromARGB(255, 255, 240, 218),
              ),

              SizedBox(height: 25),

              // Frase
              Text(
                "crea un compte nou",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 240, 218),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 25),

              // Text divorsi
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 255, 240, 218),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        "registrat",
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
                hintText: "escriu el teu email",
              ),

              // Texfield password
              TextfieldAuth(
                controller: tecPassword,
                obscureText: true,
                hintText: "tria un password",
              ),

              // texfield confirmar password
              TextfieldAuth(
                controller: tecConfPass,
                obscureText: true,
                hintText: "repeteix la password",
              ),
              const SizedBox(height: 10),

              // no estas registrat
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Ja ets membre?"),
                    const SizedBox(width: 5),
                    const Text(
                      "fes login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 40, 71, 97),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              //boto registrat
              BotoAuth(
                text: "Registre",
                onTap: ferRegistre,
              ),

              BotoAuth(
                text: "Logout",
                onTap: () {
                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
