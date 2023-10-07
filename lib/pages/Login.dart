import 'package:flutter/material.dart';
import 'package:flutter_application_2/Utils/MyRoutes.dart';
import 'package:velocity_x/velocity_x.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  String name = " ";
  bool changeBtn = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeBtn = true;
      });
    }
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.SecondRoute);
    StepState() {
      changeBtn = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Image
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/loginpage.png",
                  fit: BoxFit.cover, // Adjust the BoxFit as needed
                ),
              ),
              // Text below the image
              const Padding(
                padding: EdgeInsets.all(16.0),
              ),
              Text(
                "WELCOME $name",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                              hintText: "Enter User Name", labelText: "Name"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "User Name should not be empty";
                            }
                          }),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            labelText: "Password", hintText: "Enter Password"),
                        validator: (value) {
                          if (value!.length < 7) {
                            return "Password length must be greater than 7";
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(changeBtn ? 5 : 15),
                        color: Colors.deepPurple,
                        child: InkWell(
                          onTap: () async => moveToHome(context),
                          child: AnimatedContainer(
                            margin: const EdgeInsets.all(2),
                            duration: Duration(seconds: 2),
                            width: changeBtn ? 70 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeBtn
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
