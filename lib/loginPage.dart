import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  String? phone;
  String? password;
  TextEditingController phoneController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            verticalDirection: VerticalDirection.down,
            children: [
              Container(
                child: Image(
                  image: AssetImage('Images/logo.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 70,
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: 'Phone Number',
                    ),
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (String text) {
                      setState(() {
                        phone = phoneController.text;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20, top: 15),
                      hintText: 'Password',
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (String text) {
                      setState(() {
                        password = passwordController.text;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: null,
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.greenAccent[400], // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {},
                      child: Text('Login'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Not a member yet?'),
                        TextButton(
                          onPressed: null,
                          child: Text(
                            'Click Here',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
