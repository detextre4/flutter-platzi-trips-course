import 'package:flutter/material.dart';
import 'package:flutter_platzi_trips/User/bloc/bloc_user.dart';
import 'package:flutter_platzi_trips/User/ui/widgets/circle_button.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class ButtonsBar extends StatelessWidget {
  late UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            // change password
            CircleButton(true, Icons.vpn_key, 20.0,
                const Color.fromRGBO(255, 255, 255, 0.6), () => {}),
            // add new place
            CircleButton(false, Icons.add, 40.0,
                const Color.fromRGBO(255, 255, 255, 1), () => {}),
            // close session
            CircleButton(
                true,
                Icons.exit_to_app,
                20.0,
                const Color.fromRGBO(255, 255, 255, 0.6),
                () => {userBloc.signOut()}),
          ],
        ));
  }
}
