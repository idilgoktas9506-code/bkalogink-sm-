import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // LOGO
            Image.asset(
              "assets/bka_logo.jpg",
              width: 120,
            ),

            SizedBox(height: 10),

            Text(
              "Bakım Analizatörü",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            // KULLANICI ADI
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Kullanıcı Adı",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 15),

            // ŞİFRE
            Container(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Şifre",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 20),

            // BUTON
            Container(
              width: 300,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text("Giriş Yap"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
      ),
      body: Center(
        child: Text(
          "Giriş Başarılı 🎉",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}