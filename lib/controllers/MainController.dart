import '../exports/exports.dart';

class MainController extends ChangeNotifier{
  bool _power = false;

  // getters
  bool get power => _power;
  // setter
  void setPower(String id){
   FirebaseFirestore.instance.collection("tenants").doc(id).get().then((value) {
    //  _power = (value.data()?["power_status"] == "on" || value.data()?["landlord_power_control"] == "on");
    if (value.data()?["power_status"] == "on" || value.data()?["landlord_power_control"] == "on") {
      _power = true;
    } else if(value.data()?["power_status"] == "off" && value.data()?['landlord_power_control'] == 'on'){
      _power = true;
    } else if(value.data()?["power_status"] == "on" && value.data()?['landlord_power_control'] == 'off'){
      _power = true;
    } else {
      _power = false;
    }
     notifyListeners();
    });
  }
  controlPower(String id, int percentage){
      FirebaseFirestore.instance.collection("tenants").doc(id).update({
        "power_status": percentage < 100 ? "off" : "on",
      }).then((value) {});
  }
}