import 'package:tradeforcetn/model/signal_model.dart';
import 'package:http/http.dart' as http ;

class SignalService {

Future <List<Signals>?>  getSignals () async {
  var client = http.Client();
  var uri = Uri.parse("http://192.168.1.115:3000/api/signals");
  var response = await client.get(uri);
  if (response.statusCode == 200) {
    var json = response.body;
    return signalsFromJson(json);
  }
}
}