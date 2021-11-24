import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsappweb/provider/conversa_provider.dart';
import 'package:whatsappweb/rotas.dart';
import 'package:whatsappweb/uteis/paleta_cores.dart';
import 'package:provider/provider.dart';


final ThemeData temaPadrao = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: PaletaCores.corPrimaria,
    onPrimary: Colors.white,
    // Colors that are not relevant to AppBar in LIGHT mode:
    primaryVariant: PaletaCores.corPrimaria,
    secondary: PaletaCores.corDestaque,
    secondaryVariant: PaletaCores.corDestaque,
    onSecondary: Colors.white,
    background: Colors.grey,
    onBackground: Colors.grey,
    surface: Colors.grey,
    onSurface: Colors.grey,
    error: Colors.grey,
    onError: Colors.grey,
  ),
);

void main(){

  User? usuarioFirebase = FirebaseAuth.instance.currentUser;
  String urlInicial = "/";
  if( usuarioFirebase != null ){
    urlInicial = "/home";
  }

  runApp(ChangeNotifierProvider(
      create: (context) => ConversaProvider(),
      child: MaterialApp(
        title: "WhatsApp Web",
        debugShowCheckedModeBanner: false,
        // home: Login(),
        theme: temaPadrao,
        initialRoute: urlInicial,
        onGenerateRoute: Rotas.gerarRota,
      ),
  ));
}
