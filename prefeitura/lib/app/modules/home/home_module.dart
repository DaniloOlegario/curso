// módulo da pagina inicial do aplicativo

import 'package:flutter_modular/flutter_modular.dart';
import 'package:prefeitura/app/modules/home/home_page.dart';

class HomeModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
  }
}
