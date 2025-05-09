import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // Gunakan Center widget untuk menempatkan semua elemen di tengah
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Instagram
            Image.asset(
              'assets/images/logo.png', // Menambahkan logo Instagram
              width: 150, // Tentukan ukuran logo agar sesuai dengan tampilan
              height: 150,
            ),
            SizedBox(height: 20),
            
            // Username (atau Gambar Profil)
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/pp2.png'), // Ganti dengan gambar profil
            ),
            SizedBox(height: 20),

            // Nama Pengguna
            Text(
              'janziar Nanda',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Tombol Login
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman LoginDetailPage
                Navigator.pushNamed(context, '/loginDetail');
              },
              child: Text('Log in'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Ganti 'primary' dengan 'backgroundColor'
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 12),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            
            // Switch accounts dan Sign Up
            TextButton(
              onPressed: () {},
              child: Text('Switch accounts'),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Don't have an account yet? Sign up."),
            ),
          ],
        ),
      ),
    );
  }
}
