import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planery_exclusive/Login/LoginPage.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/564x/57/5a/ec/575aece356aa78e3a67fd5d932d521ba.jpg'), // Replace with your image URL
            ),
            const SizedBox(height: 20),
            itemProfile('Name', 'Add your name', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('Phone', 'Add your number', CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile('Address', 'Add your address', CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile('Email', 'Add your email', CupertinoIcons.mail),
            const SizedBox(height: 20,),
            Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }));
                        SizedBox(height: 19,);
                      },
                      color: Color.fromARGB(255, 185, 131, 235),
                      
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: const Color.fromARGB(255, 199, 127, 236).withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 10,
          )
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
