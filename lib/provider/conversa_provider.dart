
import 'package:flutter/cupertino.dart' show ChangeNotifier;
import 'package:whatsappweb/modelos/usuario.dart';

class ConversaProvider with ChangeNotifier {

  Usuario? _usuarioDestinatario;

  Usuario? get usuarioDestinatario => _usuarioDestinatario;

  set usuarioDestinatario(Usuario? usuario) {
    _usuarioDestinatario = usuario;
    notifyListeners();
  }
}