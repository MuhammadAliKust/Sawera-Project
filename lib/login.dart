import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                label: Text("Email"),
                hintText: 'test@gmail.com',
                filled: true,
                enabled: true,
                fillColor: Colors.blue.withOpacity(0.3),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow, width: 3),
                    borderRadius: BorderRadius.circular(30)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 3),
                    borderRadius: BorderRadius.circular(30)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 3),
                    borderRadius: BorderRadius.circular(30)),
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.email)),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                label: Text("Password"),
                hintText: 'Password must be 6 or more characters.',
                filled: true,
                enabled: true,
                fillColor: Colors.blue.withOpacity(0.3),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow, width: 3),
                    borderRadius: BorderRadius.circular(30)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 3),
                    borderRadius: BorderRadius.circular(30)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 3),
                    borderRadius: BorderRadius.circular(30)),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility)),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login"))
        ],
      ),
    );
  }
}
