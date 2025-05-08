
import 'package:firebase_remote_config/firebase_remote_config.dart';

final String baseUrl = '${FirebaseRemoteConfig.instance.getString("name")}';
final String newsApiKey = '${FirebaseRemoteConfig.instance.getString("key")}';

