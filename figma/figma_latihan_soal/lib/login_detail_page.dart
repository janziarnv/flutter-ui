import 'package:flutter/material.dart';

class LoginDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Instagram'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Menjaga agar elemen berada di tengah
          crossAxisAlignment: CrossAxisAlignment.center, // Menjaga agar elemen berada di tengah
          children: [
            // Ganti dengan logo Instagram
            Image.asset(
              'assets/images/logo.png', // Logo Instagram
              width: 150, // Ukuran logo Instagram
              height: 150,
            ),
            SizedBox(height: 20),

            // Username Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 10),

            // Password Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility_off),
                  onPressed: () {},
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),

            // Forgot Password Button
            TextButton(
              onPressed: () {},
              child: Text('Forgot password?'),
            ),
            SizedBox(height: 20),

            // Log in Button
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman utama feed
                Navigator.pushNamed(context, '/mainFeed');
              },
              child: Text('Log in'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 12),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),

            // Log in with Facebook Section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Log in with Facebook'),
                SizedBox(width: 8),
                // Tambahkan Logo Facebook
                Image.asset(
                  'assets/images/facebooklogo.png', // Logo Facebook
                  width: 20,
                  height: 20,
                ),
              ],
            ),
            SizedBox(height: 20),

            // Sign Up Button
            TextButton(
              onPressed: () {},
              child: Text("Don't have an account? Sign up."),
            ),
          ],
        ),
      ),
    );
  }
}
