
import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';

class GetAnswer{
  Future<Message> GetYesOrNotAnswer  () async {
    final httpDio = Dio();
    var response =  await httpDio.get("https://yesno.wtf/api");
    final yesNoModel = YesNoModel.fromJsonMap(response.data);
    return Message(text: yesNoModel.answer,imageUrl: yesNoModel.image,fromWho: FromWho.yours);
    

  }
}