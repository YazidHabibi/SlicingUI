import 'package:flutter/material.dart';
import 'package:slicingui/main.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  bool obsecured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            SizedBox(width: 150, height: 150, child: CircleAvatar()),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Container(
                // height: 250,
                width: 420,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "LOGINPAGE",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: TextField(
                        controller: usernamecontroller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hint: Text('Username'),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: TextField(
                        controller: passwordcontroller,
                        obscureText: obsecured,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hint: Text('Password'),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obsecured = !obsecured;
                              });
                            },
                            icon: Icon(
                              obsecured
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          String username = usernamecontroller.text;
                          String password = passwordcontroller.text;
                          if (username == 'Fulan' && password == '12345') {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NavigasiBawah(),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Username atau password salah!"),
                                backgroundColor: Colors.red,
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                          }
                        },
                        child: Text("Login"),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
