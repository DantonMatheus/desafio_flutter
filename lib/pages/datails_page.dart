import 'package:desafio_001/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PostModel args = ModalRoute.of(context)!.settings.arguments as PostModel;

    return Scaffold(
      appBar: AppBar(
        title: Text('Details', 
        textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            args.title,
            style: TextStyle(
              fontSize: 22, 
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(args.body,
          style: TextStyle(
              fontSize: 18,
              ),
              ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Notícia: ${args.id}, Autor: ${args.userId}',
            style: TextStyle(
              fontSize: 18,
              ),
              ),
        ]),
      ),
    );
  }
}
