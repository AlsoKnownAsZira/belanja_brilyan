import '/pages/home_page.dart';
import '/pages/item_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MaterialApp.router(
    theme: ThemeData(
      useMaterial3: true,
    ),
    routerConfig: router,
  ));
}

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/item',
      builder: (context, state) => const ItemPage(),
    ),
  ],
);