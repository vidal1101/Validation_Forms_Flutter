import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:validation_form/UI/app_main.dart';


Future<void> main() async {
  // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
  // We recommend adjusting this value in production.
  await SentryFlutter.init(
    (options) => options
      ..dsn = 'https://1b55ba74f59f475f9bec6a384e9a84c0@o1128915.ingest.sentry.io/6540183'
      ..tracesSampleRate = 1.0
      ..release = 'validation_forms_firebase@1.0'
      ..environment = 'staging',
    appRunner: () => runApp( const MyApp(key:  Key('MyAppMain'),)),
  );

  // or define SENTRY_DSN via Dart environment variable (--dart-define)
}  


