import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style/styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment
              .bottomCenter, // Alinea el texto al final (parte inferior) del stack
          children: <Widget>[
            Image.asset(
              'assets/image/background.png', // Reemplaza con la ruta de tu imagen
              height: 400,
              width: MediaQuery.of(context)
                  .size
                  .width, // Ocupa todo el ancho disponible
              fit: BoxFit
                  .cover, // Asegura que la imagen cubra todo el espacio asignado
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Iniciar sesión', style: titleStyle)),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22, bottom: 12.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Iniciar sesión con email ', style: subTitleStyle)),
        ),
        _inputTextEmail(),
        _buttonDegradado(),
        const Padding(
          padding: EdgeInsets.only(left: 18, right: 18, top: 20),
          child: Divider(
            color: Color.fromRGBO(114, 114, 114, 1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22, top: 12.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'O continúa con',
              style: footerTitleStyle,
            ),
          ),
        ),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 22),
                child: _buttonGeneral('assets/icon/google.svg')),
            Padding(
                padding: EdgeInsets.only(left: 5),
                child: _buttonGeneral('assets/icon/facebook.svg')),
          ],
        ),
      ],
    );
  }

  Container _inputTextEmail() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromRGBO(25, 7, 51, 1),
      ),
      width: 367,
      child: TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(25, 7, 51, 1))),
          labelText: 'Email',
          labelStyle: TextStyle(color: Colors.white),
          hintText: 'usuario@mail.com',
          hintStyle: hintTitleStyle,
        ),
      ),
    );
  }

  Padding _buttonDegradado() {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Container(
        width: 367,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(80, 23, 148, 1),
              Color.fromRGBO(62, 112, 161, 1)
            ], // Colores del degradado
          ),
          borderRadius:
              BorderRadius.circular(8), // Redondear las esquinas del botón
        ),
        child: TextButton(
          onPressed: () {
            // Acción del botón
          },
          child: const Text(
            'Iniciar Sesión',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Colors.white, // Color del texto
            ),
          ),
        ),
      ),
    );
  }

  Padding _buttonGeneral(String iconPath) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 18.0,
      ),
      child: Container(
        width: 175,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // Redondear las esquinas del botón
            color: const Color.fromRGBO(59, 32, 99, 1)),
        child: TextButton(
          onPressed: () {
            // Acción del botón
          },
          child: Row(
            children: [
              SizedBox(
                width: 25,
              ),
              SvgPicture.asset(
                iconPath,
                width: 15,
                height: 15,
              ),
              SizedBox(width: 10), // Espacio entre el icono y el texto (10px
              const Text(
                'Google',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Color del texto
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
