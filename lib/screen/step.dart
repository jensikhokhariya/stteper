import 'package:flutter/material.dart';
class Stepper_S extends StatefulWidget {
  const Stepper_S({Key? key}) : super(key: key);

  @override
  State<Stepper_S> createState() => _Stepper_SState();
}

class _Stepper_SState extends State<Stepper_S> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Stepper App"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stepper(
            currentStep: i,
            onStepTapped: (ps) {
              setState(() {
                i = ps;
              });
            },
            onStepContinue: () {
              setState(() {
                if (i < 2) {
                  i++;
                }
              });
            },
            onStepCancel: () {
              setState(() {
                if (i > 0) {
                  i--;
                }
              });
            },
            steps: [
              Step(
                title: Text("Sign up",style: TextStyle(fontSize: 20),),
                content: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person_rounded),
                        label: Text("Full Name")
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.email_outlined),
                          label: Text("Email id")
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock_outline),
                          label: Text("Password")
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock_outline),
                          label: Text("Confirm Password")
                      ),
                    ),
                  ],
                ),
              ),
              Step(
                title: Text("Login",style: TextStyle(fontSize: 20),),
                content: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person_rounded),
                          label: Text("User Name")
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.email_outlined),
                          label: Text("Password"),
                      ),
                    ),
                  ],
                ),
              ),
              Step(
                title: Text("Home",style: TextStyle(fontSize: 20),),
                content: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
