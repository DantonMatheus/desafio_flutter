import 'package:desafio_001/services/prefs_service.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.wait([
      PrefService.isAuth(),
      Future.delayed(Duration(seconds: 3)),
      ]).then((value) => value[0] 
      ? Navigator.of(context).pushReplacementNamed('/home') 
      : Navigator.of(context).pushReplacementNamed('/login'));

    //Future.delayed(Duration(seconds: 3)).then(
      //(_) => Navigator.of(context).pushReplacementNamed('/login'),
   // );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade500,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.white54,
        ),
      ),
    );
  }
}
