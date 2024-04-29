import 'package:flutter_modular/flutter_modular.dart';
import 'package:prefeitura/app/modules/informatica/informatica_page.dart';

class InformaticaModule extends Module{
@override
void routes(r){
  r.child('/', child: (context) => const InformaticaPage(),);
}
}