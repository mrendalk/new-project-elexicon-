import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 2.5,
              child: Image(
                image: AssetImage("assets/images/buckslogo.png"),
              )),
          //const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  hintText: "Username",
                  icon: Icon(
                    Icons.people_alt_outlined,
                    color: Colors.red,
                  ),
                  label: Text("username")),
              keyboardType: TextInputType.text,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide()),
                icon: Icon(Icons.email_outlined, color: Colors.red),
                label: Text("Email"),
                hintText: "Enter Your Email",
              ),
              mouseCursor: MouseCursor.uncontrolled,
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  height: 40,
                  width: 200,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
            onTap: () {
              print("Login button");
              Navigator.pushNamed(context, '/home');
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Not register yet? Please.",
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                  onPressed: () {
                    print("sign up button");
                  },
                  child: const Text("Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)))
            ],
          ),

          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(flex: 1, child: Text("OR")),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/facebook_logo.png")),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                  backgroundImage: AssetImage("assets/images/twitter.png")),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                  backgroundImage: AssetImage("assets/images/google.png")),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image(
                  height: 50,
                  width: 75,
                  image: AssetImage("assets/images/leaves.png"),
                ),
              ),
              Container(
                child: Image(
                  height: 50,
                  width: 75,
                  image: AssetImage("assets/images/fruit.png"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
