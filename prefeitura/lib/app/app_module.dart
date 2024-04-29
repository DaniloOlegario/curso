import 'package:flutter_modular/flutter_modular.dart';
import 'package:prefeitura/app/modules/home/home_module.dart';
import 'package:prefeitura/app/modules/informatica/informatica_module.dart';

class AppModule extends Module{
  @override
  void routes(r){
    r.module('/home/', module: HomeModule());
    r.module('/informatica/', module: InformaticaModule());
  }
}