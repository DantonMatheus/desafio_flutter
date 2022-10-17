import 'package:desafio_001/models/post_model.dart';

abstract class HomeRepository {

  Future<List<PostModel>> getList();

}