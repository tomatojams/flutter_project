import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class MqttRepo {
  Future<MqttConnectionState?> connect({required String nickName}) async {
    try {
      client.connectionMessage = MqttConnectMessage()
          .withClientIdentifier(nickName)
          .withWillTopic("JOIN")
          .withWillMessage(nickName)
          .startClean()
          .withWillQos(MqttQos.atMostOnce);
      MqttClientConnectionStatus? status = await client
          .connect()
          .timeout(const Duration(seconds: 5), onTimeout: () async => null);
      if (status == null) return null;
      return status.state;
    } catch (e) {
      return null;
    }
  }

  MqttServerClient client = MqttServerClient("10.0.2.2", "c")
    ..port = 1883
    ..setProtocolV311()
    ..keepAlivePeriod = 20
    ..onDisconnected = () {
      print("onDisconnected");
    }
    ..onConnected = () {
      print("onConnected");
    }
    ..onSubscribed = (String data) {
      print("data : $data");
    }
    ..pongCallback = () {
      print("pongCallback");
    };

  String parse(List<MqttReceivedMessage<MqttMessage>> event) {
    MqttPublishMessage msg = event[0].payload as MqttPublishMessage;
    return MqttPublishPayload.bytesToStringAsString(msg.payload.message);
  }
}
