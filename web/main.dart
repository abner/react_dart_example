import 'dart:html';

// import 'package:react/react_client.dart' as react_client;
// import 'package:react/react.dart';
// import 'package:react/react_dom.dart' as react_dom;

import 'package:arquitetura_referencia_core/core.dart';
import 'package:over_react/react_dom.dart' as react_dom;
import 'package:over_react/over_react.dart';


import 'components/card.dart';

main() {


  var bootstrapJS = window.location.protocol + "//unpkg.com/bootstrap@4.4.1/dist/js/bootstrap.min.js";
  print(bootstrapJS);
  document.head.append(new ScriptElement()..src = bootstrapJS);

  var bootstrapCSS = window.location.protocol + "//unpkg.com/bootstrap@4.4.1/dist/css/bootstrap.min.css";
  print(bootstrapCSS);
  document.body.append(new LinkElement()..href = bootstrapCSS ..rel="stylesheet");
  // This should be called once at the beginning of the application.
  //react_client.setClientConfiguration();
  

  print('MESSAGE: ${SpecificPlatform.defaultService.message}');

  // Something to render... in this case a simple <div> with no props, and a string as its children.
  // var component = div({"className": "alert-danger"}, "DIV renredizada com React + Dart :::: [COOL !!!!]");

  // var panel = div({"className": "card"}, [
  //   div({"className": "card-body", "key": 1}, [
  //     h5({"className": "card-title", "key": 2}, "Título"),
  //     h6({"className": "card-subtitle", "key": 2}, "Sub-título"),
  //     div({"className": "card-text", "key": 3}, "Corpo do Card"),
  //   ])
  // ]);

  // Render it into the mount node we created in our .html file.
  // react_dom.render(component, querySelector('#react_mount_point'));
  // react_dom.render(BootstrapCardComponent(), querySelector('#react_mount_point'));

  //react_client.setClientConfiguration();

  setClientConfiguration();
  var card = BootstrapCard();
  card
    ..title = 'Título do Card'
    ..subtitle = 'SubTítulo do Card'
    ..body = 'Corpo do Card';
  react_dom.render(card(), querySelector("#react_mount_point"));
}