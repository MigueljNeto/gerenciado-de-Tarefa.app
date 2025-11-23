import 'package:flutter/material.dart';
import 'package:calendario/tema/appTema.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppTheme.purpleNeon, AppTheme.pinkVibrant],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.check_circle_outline,
                    size: 110, color: Colors.white),
                const SizedBox(height: 20),

                Text(
                  "Bem-vindo!",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),

                const SizedBox(height: 35),

                // Campo de email
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email, color: AppTheme.blueElectric),
                  ),
                ),
                const SizedBox(height: 18),

                // Campo de senha
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Senha",
                    prefixIcon: Icon(Icons.lock, color: AppTheme.blueElectric),
                  ),
                ),
                const SizedBox(height: 30),

                // Botão de login
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/calendar');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.blueElectric,
                  ),
                  child: const Text("Entrar"),
                ),

                const SizedBox(height: 20),

                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: const Text(
                    "Criar uma conta",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
