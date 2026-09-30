import 'package:beeceptor_app/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: 'Home Page'),
      ),
      body: Center(
        child: TextButton.icon(
          style: ButtonStyle(
            fixedSize: WidgetStatePropertyAll(Size(300, 60)),
            backgroundColor: WidgetStatePropertyAll(Colors.redAccent),
          ),
          onPressed: () => context.go('/posts'),
          label: Text(
            'Ver Posts',
            style: TextStyle(color: Colors.white, fontSize: 36),
          ),
          icon: Icon(Icons.read_more_outlined, color: Colors.white, size: 36),
        ),
      ),
    );
  }
}
