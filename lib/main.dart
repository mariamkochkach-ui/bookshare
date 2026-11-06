
import 'package:flutter/material.dart';

void main() {
  runApp(const BookShareApp());
}

class BookShareApp extends StatelessWidget {
  const BookShareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookShare',
      home: const ConnexionPage(),
    );
  }
}

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool hidePassword = true;

  final Color brown = const Color(0xFF9B897B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5F1),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 35),

                  const Center(
                    child: Text(
                      'BookShare',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF75553F),
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  Center(
                    child: Text(
                      'Votre bibliothèque, à portée de main.',
                      style: TextStyle(
                        fontSize: 13,
                        color: brown,
                      ),
                    ),
                  ),

                  const SizedBox(height: 53),

                  const Text(
                    'Email',
                    style: TextStyle(fontSize: 18),
                  ),

                  const SizedBox(height: 19),

                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Votre adresse email',
                      filled: true,
                      fillColor: const Color(0xFFF0ECE7),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 12,
                      ),
                      border: InputBorder.none,
                    ),
                  ),

                  const SizedBox(height: 26),

                  const Text(
                    'Mot de passe',
                    style: TextStyle(fontSize: 18),
                  ),

                  const SizedBox(height: 19),

                  TextField(
                    controller: passwordController,
                    obscureText: hidePassword,
                    decoration: InputDecoration(
                      hintText: 'Votre mot de passe',
                      filled: true,
                      fillColor: const Color(0xFFF0ECE7),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 12,
                      ),
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(
                          hidePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 28),

                  Center(
                    child: SizedBox(
                      width: 164,
                      height: 41,
                      child: ElevatedButton(
                        onPressed: () {
                          if (emailController.text.isEmpty ||
                              passwordController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Veuillez remplir tous les champs',
                                ),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Connexion en cours...'),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: brown,
                          foregroundColor: Colors.black,
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: const Text(
                          'SE CONNECTER',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  const Center(
                    child: Text(
                      "Vous n'avez pas de compte?",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),

                  const SizedBox(height: 17),

                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "S'inscrire",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
