import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'login': 'Login',
          'welcome': 'Welcome',
          "Connect easily with your family and friends over countries":"Connect easily with\nyour family and friends\nover countries",
          "Terms & Privacy Policy":"Terms & Privacy Policy",
          "Continue with email":"Continue with email",
          "Continue with phone":"Continue with phone",
        },
        'hi_IN': {
          'login': 'लॉगिन',
          'welcome': 'स्वागत है',
          "Connect easily with your family and friends over countries":"देश-विदेश में अपने परिवार और दोस्तों से आसानी से जुड़ें।",
          "Terms & Privacy Policy":"नियम और गोपनीयता नीति",
          "Continue with email":"ईमेल से जारी रखें",
          "Continue with phone":"फ़ोन से जारी रखें",
        },
        'gu_IN': {
          'login': 'લૉગિન',
          'welcome': 'સ્વાગત છે',
          "Connect easily with your family and friends over countries":"વિવિધ દેશોમાં તમારા પરિવાર અને મિત્રો સાથે સરળતાથી જોડાઓ",
          "Terms & Privacy Policy":"શરતો અને ગોપનીયતા નીતિ",
          "Continue with email":"ઇમેઇલ સાથે ચાલુ રાખો",
          "Continue with phone":"ફોન સાથે ચાલુ રાખો",
        },
      };
}