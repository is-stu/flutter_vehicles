import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = '';
  String password = '';
  bool remember = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _showLogo(),
          _showEmail(),
          _showPassword(),
          _showRemember(),
          _showSubmit()
        ],
      )),
    );
  }

  Widget _showLogo() {
    return const Image(
      image: AssetImage('assets/images/logo.jpg'),
      width: 300,
    );
  }

  Widget _showEmail() {
    return Container(
      padding: const EdgeInsets.all(18),
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
          hintText: 'example@email.com',
          labelText: 'Email',
          suffixIcon: const Icon(Icons.email),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          email = value;
        },
      ),
    );
  }

  Widget _showPassword() {
    return Container(
      padding: const EdgeInsets.all(18),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'example@email.com',
          labelText: 'Password',
          suffixIcon: const Icon(Icons.lock),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
        obscureText: true,
        onChanged: (value) {
          password = value;
        },
      ),
    );
  }

  Widget _showRemember() {
    return CheckboxListTile(
      title: const Text('Do you want to stay log ?'),
      onChanged: (value) {
        setState(() {
          remember = value!;
        });
      },
      value: remember,
    );
  }

  Widget _showSubmit() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: const Text('Register'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) => Colors.grey)),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Log in'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) => const Color(0xFF20B0EE))),
        )
      ],
    );
  }
}
