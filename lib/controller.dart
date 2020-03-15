import 'package:mobx/mobx.dart';
import 'package:mobx_study/models/client.dart';

part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  final client = Client();

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return "Este campo é obrigatório";
    } else if (client.name.length <= 2) {
      return "Seu nome precisa ter mais de 2 caracteres";
    }

    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return "Este campo é obrigatório";
    } else if (!client.email.contains('@')) {
      return "Este não é um email válido";
    }

    return null;
  }
}
