import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:planery_exclusive/HomeScreen/Homescreen.dart';
import 'Register.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditing controller to control the text when we enter in to it
  final username = TextEditingController();
  final password = TextEditingController();

  // A bool variable for show and hide password
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 35,
            ),
          ),
          // Image.asset(
          //   "lib/assets/man.jpg",
          //   width: 300,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: 'Username',
                        hintText: 'Enter username',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter username' : null;
                      },
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      obscureText: isVisible,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          labelText: 'Password',
                          hintText: 'Enter password',
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: () {
                              // create click button show hide password
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                            icon: Icon(Icons.visibility),
                          )),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter password' : null;
                      },
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                      },
                      color: Colors.black,
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member?',
                        style: TextStyle(color: Colors.blue[700]),
                      ),
                      SizedBox(width: 4),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RegisterPage();
                          }));
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
