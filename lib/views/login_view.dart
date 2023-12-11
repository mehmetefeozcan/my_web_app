import 'package:flutter/material.dart';
import 'package:my_web_app/views/dashboard_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late TextEditingController nameCtr;
  late TextEditingController pwdCtr;

  void onLogin() {
    if (nameCtr.text.isNotEmpty && pwdCtr.text.isNotEmpty) {
      final isNameOk = nameCtr.text == "AdminMefe";
      final isPwdOk = pwdCtr.text == "Mefe0192";

      if (isPwdOk & isNameOk) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DashboardView()),
        );
      }
    }
  }

  @override
  void initState() {
    nameCtr = TextEditingController();
    pwdCtr = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 6,
        child: Container(
          width: width * 0.3,
          height: height * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.deepPurple,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _form(),
                _customButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _form() {
    var height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        _customInput(controller: nameCtr, title: "Kullanıcı Adı"),
        SizedBox(height: height * 0.05),
        _customInput(controller: pwdCtr, title: "Şifre"),
        SizedBox(height: height * 0.05)
      ],
    );
  }

  Widget _customInput({
    required TextEditingController controller,
    String? title,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title == null
            ? const SizedBox()
            : Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }

  Widget _customButton() {
    return ElevatedButton(
      onPressed: () => onLogin(),
      child: const Text(
        "Giriş Yap",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
