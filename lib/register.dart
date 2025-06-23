import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text(
            "Register Screen",
            style: TextStyle(
                fontSize: 30, color: Colors.blue, fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: 30,
          ),
          actions: [
            Icon(
              Icons.notifications,
              color: Colors.blue,
              size: 40,
            ),
            Icon(
              Icons.notifications,
              color: Colors.blue,
              size: 40,
            ),
            Icon(
              Icons.notifications,
              color: Colors.blue,
              size: 40,
            ),
          ],
        ),
        body: Column(
          children: [
            TextField(
              enabled: true,
              decoration: InputDecoration(
                  label: Text("Email"),
                  hintText: 'test@gmail.com',
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.email),
                  fillColor: Colors.blue.withOpacity(0.2),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 4),
                      borderRadius: BorderRadius.circular(40)),
                  filled: true),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              enabled: true,
              decoration: InputDecoration(
                  label: Text("Password"),
                  hintText: 'Password must be or more characters',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                  fillColor: Colors.blue.withOpacity(0.2),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 4),
                      borderRadius: BorderRadius.circular(40)),
                  filled: true),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Register"))
          ],
        ));
  }
}
