import 'package:flutter/material.dart';
// import 'package:flutter_modular/flutter_modular.dart';
import 'package:prefeitura/app/core/ui/extensions/size_screen_extension.dart';
import 'package:prefeitura/app/core/ui/widgets/loader.dart';
import 'package:prefeitura/app/core/ui/widgets/messages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: SizedBox(
        width: 50.w,
        height: 55.h,
        child: ElevatedButton(
          onPressed: () {
            // Modular.to.pushNamed('/informatica/');
            showLoader();
            Future.delayed(const Duration(seconds: 2)).then((value) {
              hideLoader();
              showSuccess('Parabéns');
            });
          },
          child: const Text('Informática'),
        ),
      ),
    );
  }
}
