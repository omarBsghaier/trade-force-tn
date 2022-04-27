import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  static final _clientIdWeb = '566546838488-75tsovuvui6uo131s4poal1jirg4t1pa.apps.googleusercontent.com' ;
  static final _googleSignIn = GoogleSignIn(clientId: _clientIdWeb) ;
  static Future<GoogleSignInAccount?>  login() =>  _googleSignIn.signIn() ;

}