import 'package:over_react/over_react.dart';

part 'card.over_react.g.dart';

@Factory()
UiFactory<BootstrapCardProps> BootstrapCard = _$BootstrapCard;

@Props()
class _$BootstrapCardProps extends UiProps {
  String title;
  String subtitle;
  String body;
}

@Component2()
class BootstrapCardComponent extends UiComponent2<BootstrapCardProps> {
  @override
  render() {
    return (Dom.div()..className = "card")(
      (Dom.div()..className = "card-body")(
        (Dom.h5()..className = "card-title")(this.props.title),
        (Dom.h6()..className = "card-subtitle")(this.props.subtitle),
        (Dom.div()..className = "card-text")(this.props.body),
      ),
    );
  }
}
