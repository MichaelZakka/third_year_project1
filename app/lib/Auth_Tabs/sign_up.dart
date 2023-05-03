import 'package:app/CustomWidgets/auth_textfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _signuptabState();
}

class _signuptabState extends State<SignUp> {
  final EmailupCtrl = TextEditingController();

  final PassupCtrl = TextEditingController();

  final NameCtrl = TextEditingController();

  final PhoneCtrl = TextEditingController();

  final AddressCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 640,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const AuthTextfield(
                hinttext: 'Name',
                ic: Icons.person,
                obsecurity: false,
                tt: TextInputType.emailAddress),
            const AuthTextfield(
                hinttext: 'Email Address',
                ic: Icons.mail,
                obsecurity: false,
                tt: TextInputType.emailAddress),
            const AuthTextfield(
                hinttext: 'Password',
                ic: Icons.lock,
                obsecurity: true,
                tt: TextInputType.name),
            const AuthTextfield(
                hinttext: 'Confirm Password',
                ic: Icons.lock,
                obsecurity: true,
                tt: TextInputType.name),
            const AuthTextfield(
                hinttext: 'Phone Number',
                ic: Icons.phone,
                obsecurity: false,
                tt: TextInputType.number),
            const AuthTextfield(
                hinttext: 'Location',
                ic: Icons.location_on_sharp,
                obsecurity: false,
                tt: TextInputType.name),
            ElevatedButton(
              onPressed: () {
                print('Pressed!');
              },
              child: Text(
                'Sign up',
                style: TextStyle(color: Color(0xFFCE9869), fontSize: 22),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.black,
                elevation: 8,
                fixedSize: Size(325, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
