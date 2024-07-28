
import 'package:widget_test/Routes/app_routes.dart';
import 'package:widget_test/pages/home_page.dart';

import 'commont/commont.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorObservers: [
        GetObserver(),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      getPages: AppRoutes.instance.getPages,
      initialRoute: '/',
    );
  }
}