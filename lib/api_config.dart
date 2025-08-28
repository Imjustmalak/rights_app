<<<<<<< HEAD


const String baseUrl = 'http://10.0.2.2:3000';
=======
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConfig {
  static String baseUrl =
      dotenv.env['API_BASE_URL'] ?? 'http://10.0.2.2:3000/api';
}
>>>>>>> be622d1 (Updated project)
