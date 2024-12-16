import 'package:flutter/material.dart';
import 'package:login/widgets/login_form.dart';
import 'package:login/widgets/logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        constraints: const BoxConstraints(maxWidth: 480),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              LogoSection(),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF3983CC),
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 22),
      child: Image.asset(
        'assets/logo.png',
        width: 233,
        fit: BoxFit.contain,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(22, 13, 22, 24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0x99C5C5C5),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        children: [
          const Text(
            'USER LOGIN',
            style: TextStyle(
              fontSize: 32,
              fontFamily: 'Hammersmith One',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 19),
            padding: const EdgeInsets.fromLTRB(26, 41, 26, 18),
            decoration: BoxDecoration(
              color: const Color(0xBFC5C5C5),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'USERNAME',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/user_icon.png', width: 23),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFD9D9D9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 36),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/lock_icon.png', width: 21),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFD9D9D9),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Handle login
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF2C28BA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.black),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 35,
                        vertical: 6,
                      ),
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFEBEBEB),
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  TextButton(
                    onPressed: () {
                      // Handle sign up
                    },
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/sign_up_form.dart';
import 'widgets/logo_header.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        constraints: const BoxConstraints(maxWidth: 480),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              LogoHeader(),
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF3983CC),
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 22),
      child: Image.asset(
        'assets/images/logo.png',
        width: 233,
        fit: BoxFit.contain,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'form_input_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(22, 13, 22, 24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0x99C5C5C5),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        children: [
          const Text(
            'SIGN UP',
            style: TextStyle(
              fontSize: 32,
              fontFamily: 'Hammersmith One',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 22),
            padding: const EdgeInsets.all(26),
            decoration: BoxDecoration(
              color: const Color(0xBFC5C5C5),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Form(
              child: Column(
                children: [
                  FormInputField(
                    icon: 'assets/icons/email.png',
                    label: 'EMAIL',
                    inputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 19),
                  FormInputField(
                    icon: 'assets/icons/user.png',
                    label: 'USERNAME',
                  ),
                  const SizedBox(height: 21),
                  FormInputField(
                    icon: 'assets/icons/password.png',
                    label: 'PASSWORD',
                    isPassword: true,
                  ),
                  const SizedBox(height: 43),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF2C28BA),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 39,
                        vertical: 6,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.black),
                      ),
                    ),
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(
                        color: Color(0xFFEBEBEB),
                        fontSize: 20,
                        fontFamily: 'Hammersmith One',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class FormInputField extends StatelessWidget {
  final String icon;
  final String label;
  final bool isPassword;
  final TextInputType? inputType;

  const FormInputField({
    Key? key,
    required this.icon,
    required this.label,
    this.isPassword = false,
    this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 23,
            height: 23,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 11),
          Expanded(
            child: TextFormField(
              obscureText: isPassword,
              keyboardType: inputType,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: label,
                hintStyle: const TextStyle(
                  fontFamily: 'Hammersmith One',
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              style: const TextStyle(
                fontFamily: 'Hammersmith One',
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'circular_avatar.dart';
import 'image_container.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      constraints: const BoxConstraints(maxWidth: 480),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            color: const Color(0xFF3983CC),
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 316),
                const ImageContainer(),
                const SizedBox(height: 133),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.withOpacity(0.8),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 34,
                    vertical: 35,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircularAvatar(),
                      CircularAvatar(),
                      CircularAvatar(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CircularAvatar extends StatelessWidget {
  const CircularAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 85,
      decoration: const BoxDecoration(
        color: Color(0xFFC3C3C3),
        shape: BoxShape.circle,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        border: Border.all(
          color: Colors.black,
          width: 4,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 7,
            color: Colors.black,
          ),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/de92b9a69a0e2886c0d4cacfba4143bb79b6b8945198b1b208602d23beb23085?placeholderIfAbsent=true&apiKey=574986aafdf1489ca2bcbe38ac7b91ee',
            fit: BoxFit.contain,
            width: double.infinity,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Center(child: CircularProgressIndicator());
            },
            semanticLabel: 'Profile image',
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'profile_circle.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      constraints: const BoxConstraints(maxWidth: 480),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            color: const Color(0xFF3983CC),
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 316),
                Center(
                  child: Container(
                    width: 250,
                    height: 250,
                    padding: const EdgeInsets.fromLTRB(10, 17, 10, 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      border: Border.all(
                        color: Colors.black,
                        width: 4,
                      ),
                    ),
                    child: const SizedBox(height: 223),
                  ),
                ),
                const SizedBox(height: 133),
                Container(
                  margin: const EdgeInsets.all(34),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.withOpacity(0.8),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileCircle(),
                      ProfileCircle(),
                      ProfileCircle(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ProfileCircle extends StatelessWidget {
  const ProfileCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 85,
      decoration: const BoxDecoration(
        color: Color(0xFFC3C3C3),
        shape: BoxShape.circle,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 43, top: -2),
      width: 250,
      padding: const EdgeInsets.fromLTRB(10, 231, 10, 12),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(217, 217, 217, 0.3),
        border: Border.all(
          color: Colors.black,
          width: 4,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 7,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'custom_container_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomContainerWidget(),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class TankSpecificationsWidget extends StatelessWidget {
  const TankSpecificationsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFD9D9D9),
        border: Border.all(color: Colors.black, width: 1),
      ),
      padding: const EdgeInsets.fromLTRB(17, 16, 45, 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'SPESIFIKASI',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 22),
          Text(
            'KAPASITAS MAKSIMUM : 100.000 L',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 11),
          Text(
            'TEKANAN KERJA : 220 - 275 PSI',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 12),
          Text(
            'SUHU OPERASI : 75-90 CELCIUS',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 13),
          Text(
            'MATERIAL : BAJA KARBON',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:storage_tank/status_item_widget.dart';

class TankStatusWidget extends StatelessWidget {
  const TankStatusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFD9D9D9),
        border: Border.all(color: Colors.black, width: 3),
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 14),
            child: Text(
              'STATUS',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 13),
          StatusItemWidget(
            iconPath: 'assets/temperature_icon.png',
            value: '85 CELCIUS',
            statusIconPath: 'assets/status_ok.png',
          ),
          const SizedBox(height: 16),
          StatusItemWidget(
            iconPath: 'assets/pressure_icon.png',
            value: '236 PSI',
            statusIconPath: 'assets/status_warning.png',
          ),
          const SizedBox(height: 14),
          StatusItemWidget(
            iconPath: 'assets/volume_icon.png',
            value: '85 % (85000 L)',
            statusIconPath: 'assets/status_warning.png',
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class StatusItemWidget extends StatelessWidget {
  final String iconPath;
  final String value;
  final String statusIconPath;

  const StatusItemWidget({
    Key? key,
    required this.iconPath,
    required this.value,
    required this.statusIconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFD9D9D9),
        border: Border.all(color: Colors.black, width: 1),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                iconPath,
                width: 44,
                height: 44,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 13),
              Text(
                value,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
          Image.asset(
            statusIconPath,
            width: 40,
            height: 40,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class TankSpecificationsWidget extends StatelessWidget {
  const TankSpecificationsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFD9D9D9),
        border: Border.all(color: Colors.black, width: 1),
      ),
      padding: const EdgeInsets.fromLTRB(17, 16, 45, 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'SPESIFIKASI',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 22),
          Text(
            'KAPASITAS MAKSIMUM : 100.000 L',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 11),
          Text(
            'TEKANAN KERJA : 220 - 275 PSI',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 12),
          Text(
            'SUHU OPERASI : 75-90 CELCIUS',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 13),
          Text(
            'MATERIAL : BAJA KARBON',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}