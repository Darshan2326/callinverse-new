import 'package:get/state_manager.dart';

// Country Model
class Country {
  final String id;
  final String name;
  final String countryCode; // e.g., +1, +44, +91
  final String flagEmoji;

  Country({
    required this.id,
    required this.name,
    required this.countryCode,
    required this.flagEmoji,
  });
}

class PhonesignupController extends GetxController {
  // Mock country list
  final List<Country> countries = [
    Country(
      id: '1',
      name: 'United States',
      countryCode: '+1',
      flagEmoji: '🇺🇸',
    ),
    Country(
      id: '44',
      name: 'United Kingdom',
      countryCode: '+44',
      flagEmoji: '🇬🇧',
    ),
    Country(id: '91', name: 'India', countryCode: '+91', flagEmoji: '🇮🇳'),
    Country(id: '86', name: 'China', countryCode: '+86', flagEmoji: '🇨🇳'),
    Country(id: '81', name: 'Japan', countryCode: '+81', flagEmoji: '🇯🇵'),
    Country(id: '33', name: 'France', countryCode: '+33', flagEmoji: '🇫🇷'),
    Country(id: '49', name: 'Germany', countryCode: '+49', flagEmoji: '🇩🇪'),
    Country(id: '61', name: 'Australia', countryCode: '+61', flagEmoji: '🇦🇺'),
  ];

  late Rx<Country> selectedCountry;

  @override
  void onInit() {
    // Set default to first country
    selectedCountry = countries.first.obs;
    super.onInit();
  }
}
