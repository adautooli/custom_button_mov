// ignore_for_file: constant_identifier_names, prefer_if_null_operators, use_key_in_widget_constructors

library social_signin_buttons;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Buttons {
  Google,
  Facebook,
  Microsoft,
  LinkedIn,
  Twitter,
  GitHub,
  Apple,
  Email,
}

class SignInButton extends StatelessWidget {
  final Function onPressed;
  final Buttons button;
  final String text;
  final ShapeBorder shape;

  const SignInButton(this.button,
      {super.key,
      required this.onPressed,
      required this.text,
      required this.shape});

  @override
  Widget build(BuildContext context) {
    switch (button) {
      case Buttons.Email:
        return Btn(
          key: const ValueKey("Email"),
          text: text,
          icon: Icons.email,
          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape,
        );
      case Buttons.Google:
        return Btn(
          key: const ValueKey("Google"),
          text: text,
          image: Container(
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: const Image(
                image: AssetImage(
                  'assets/google_logo.png',
                  package: 'social_buttons_mov',
                ),
                height: 25.0,
              ),
            ),
          ),
          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape,
        );
      case Buttons.Facebook:
        return Btn(
          key: const ValueKey("Facebbok"),
          text: text,
          icon: FontAwesomeIcons.facebookF,
          onPressed: onPressed,
          backgroundColor: const Color(0xFF3B5998),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape,
        );
      case Buttons.GitHub:
        return Btn(
          key: const ValueKey("Github"),
          text: text,
          icon: FontAwesomeIcons.github,
          onPressed: onPressed,
          backgroundColor: const Color(0xFF444444),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape,
        );
      case Buttons.Apple:
        return Btn(
          key: const ValueKey("Apple"),
          text: text,
          icon: FontAwesomeIcons.apple,
          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape,
        );
      case Buttons.LinkedIn:
        return Btn(
          key: const ValueKey("LinkedIn"),
          text: text,
          icon: FontAwesomeIcons.linkedin,
          onPressed: onPressed,
          backgroundColor: const Color(0xFF007BB6),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape,
        );
      case Buttons.Microsoft:
        return Btn(
          key: const ValueKey("Microsoft"),
          text: text,
          image: Container(
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: const Image(
                image: AssetImage(
                  'assets/microsoft_logo.png',
                  package: 'social_buttons_mov',
                ),
                height: 27.0,
              ),
            ),
          ),
          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape,
        );
      case Buttons.Twitter:
        return Btn(
          key: const ValueKey("Twitter"),
          text: text,
          icon: FontAwesomeIcons.twitter,
          onPressed: onPressed,
          backgroundColor: const Color(0xFF1DA1F2),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape,
        );
    }
  }
}

class Btn extends StatelessWidget {
  final Color? textColor, backgroundColor, iconColor;
  final Function? onPressed;
  final String? text;
  final IconData? icon;
  final Widget? image;
  final ShapeBorder? shape;
  const Btn(
      {Key? key,
      this.backgroundColor,
      this.onPressed,
      this.text,
      this.icon,
      this.textColor,
      this.iconColor,
      this.image,
      this.shape});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      key: key,
      onPressed: onPressed!(),
      color: backgroundColor,
      shape: shape ?? ButtonTheme.of(context).shape,
      padding: const EdgeInsets.all(0),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 220,
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                ),
                child: image != null
                    ? image
                    : Icon(
                        icon,
                        size: 20,
                        color: iconColor,
                      ),
              ),
              Text(
                text!,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: textColor,
                  fontSize: 14,
                  backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
