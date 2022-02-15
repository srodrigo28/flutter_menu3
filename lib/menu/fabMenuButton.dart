import 'package:flutter/material.dart';
import 'fabVerticalDelegate.dart';

class FabMenuButton extends StatefulWidget {
  const FabMenuButton({Key? key}) : super(key: key);

  @override
  _FabMenuButtonState createState() => _FabMenuButtonState();
}

class _FabMenuButtonState extends State<FabMenuButton> with SingleTickerProviderStateMixin {
  final actionButtonColor = Colors.tealAccent.shade100;

  late AnimationController animation;
  final menuIsOpen = ValueNotifier<bool>(false);

  @override
  void initState(){
    super.initState();
    animation = AnimationController(vsync: this, duration: const Duration(milliseconds: 250));
  }

  @override
  void dispose(){
    animation.dispose();
    super.dispose();
  }

  toggleMenu(){
    menuIsOpen.value ? animation.reverse() : animation.forward();
    menuIsOpen.value = !menuIsOpen.value;
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      clipBehavior: Clip.none,
      delegate: FabVerticalDelegate(animation: animation),
      children: [
          FloatingActionButton(
            child: const Icon(Icons.menu),
            onPressed: ()  => toggleMenu(),
            backgroundColor: actionButtonColor,
          ),
          FloatingActionButton(
            child: const Icon(Icons.camera_alt_rounded),
            onPressed: () {},
            backgroundColor: actionButtonColor,
          ),
          FloatingActionButton(
            child: const Icon(Icons.link),
            onPressed: () {},
            backgroundColor: actionButtonColor,
          ),
          FloatingActionButton(
            child: const Icon(Icons.attach_file),
            onPressed: () {},
            backgroundColor: actionButtonColor,
          ),
      ],
    );
  }
}
