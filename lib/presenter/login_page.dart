import 'package:challenge01/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -80,
            left: -90,
            child: circle(
              'assets/bg-blur-1.png',
            ),
          ),
          Positioned(
            bottom: 100,
            left: -190,
            child: circle(
              'assets/bg-blur-2.png',
            ),
          ),
          Positioned(
            bottom: -100,
            right: -200,
            child: circle(
              'assets/bg-blur-3.png',
            ),
          ),
          header(context),
          const SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}

circle(String image) {
  return Image.asset(
    image,
    width: 350,
  );
}

header(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 100.0, left: 20, right: 20),
    child: Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Positioned(
            top: 200,
            child: Image.asset(
              'assets/logo-icon.png',
              width: 120,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Bem-vindo ao FlutterFloripa!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'A comunidade oficial Flutter em Florianópolis-SC',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.grey.shade700,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        form(context)
      ],
    ),
  );
}

form(BuildContext context) {
  return Form(
      child: Column(
    children: [
      TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          filled: true,
          label: const Text('E-mail'),
          prefixIcon: Icon(
            FeatherIcons.mail,
            color: Colors.grey.shade500,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          filled: true,
          label: const Text('Senha'),
          prefixIcon: Icon(
            FeatherIcons.lock,
            color: Colors.grey.shade500,
          ),
          suffixIcon: Icon(
            FeatherIcons.eyeOff,
            color: Colors.grey.shade500,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      const SizedBox(
        height: 50,
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  Color(0xff0052D4),
                  Color(0xff488FFA),
                ],
              )),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
            onPressed: () {},
            child: const Text('ENTRAR'),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Esqueceu sua senha? '),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: ThemeColors.secondcolor,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ElevatedButton(
                              child: const Text('EM BREVE!!!'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: const Text(
              'Recupere aqui',
              style: TextStyle(color: ThemeColors.secondcolor),
            ),
          ),
        ],
      )
    ],
  ));
}
