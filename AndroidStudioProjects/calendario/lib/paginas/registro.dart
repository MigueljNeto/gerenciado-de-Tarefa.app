import 'package:flutter/material.dart';
import 'package:calendario/tema/appTema.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
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
                const Icon(Icons.person_add_alt_1,
                    size: 110, color: Colors.white),
                const SizedBox(height: 20),

                Text(
                  "Criar Conta",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),

                const SizedBox(height: 35),

                // Campo Nome
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: "Nome",
                    prefixIcon: Icon(Icons.person, color: AppTheme.blueElectric),
                  ),
                ),
                const SizedBox(height: 18),

                // Campo Email
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email, color: AppTheme.blueElectric),
                  ),
                ),
                const SizedBox(height: 18),

                // Campo Senha
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Senha",
                    prefixIcon: Icon(Icons.lock, color: AppTheme.blueElectric),
                  ),
                ),
                const SizedBox(height: 30),

                ElevatedButton(
                  onPressed: () {
                    // Simples: volta para o login.
                    Navigator.pop(context);
                  },
                  child: const Text("Cadastrar"),
                ),

                const SizedBox(height: 20),

                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "Voltar ao Login",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 16),
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
