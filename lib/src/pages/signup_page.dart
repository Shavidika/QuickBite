import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg2.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                color: Colors.black
                    .withOpacity(0.7), 
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors
                              .white, 
                        ),
                      ),
                      const SizedBox(
                        height: 20.0, 
                      ),
                      TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(
                              color: Colors
                                  .white), 
                        ),
                      ),
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              color: Colors
                                  .white), 
                        ),
                      ),
                      TextFormField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Colors
                                  .white), 
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            
                            print('Username: ${_usernameController.text}');
                            print('Email: ${_emailController.text}');
                            print('Password: ${_passwordController.text}');
                          },
                          child: const Text('Sign Up'),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blueAccent),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
