import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:genius_radio/src/stores/base_store.dart';

final baseStore = BaseStore();

void mainCommon({@required String host, @required String env}) {
  WidgetsFlutterBinding.ensureInitialized();
  var configuredApp = App(host, env);

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(configuredApp),
  );
}

class App extends StatelessWidget {
  final String host;
  final String env;

  App(this.host, this.env);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // tutta la app deve essere wrappata all'interno di Observer così da osservare il valore di
    // baseStore.blue che permette di stabilire il colore del tema
    return Observer(
      builder: (_) => MaterialApp(
        title: 'GeniusRadio',
        theme: ThemeData(
          primarySwatch: baseStore.blue ? Colors.blue : Colors.red,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Codemotion'),
            centerTitle: true,
          ),
          body: Center(
            child: Text('Hello from: ${this.env}'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: baseStore.toggleBlue,
            tooltip: 'Change color',
            child: Icon(Icons.refresh),
          ),
        ),
      ),
    );
  }
}
