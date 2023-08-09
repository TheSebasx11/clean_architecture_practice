import 'package:clean_architecture_practice/config/theme/app_themes.dart';
import 'package:clean_architecture_practice/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:clean_architecture_practice/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:clean_architecture_practice/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:clean_architecture_practice/injection_container.dart';
import 'package:flutter/material.dart';
import "config/routes/routes.dart";
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
          title: 'Daily News',
          theme: theme(),
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.dark,
          onGenerateRoute: AppRoutes.onGenerateRoutes,
          home: const DailyNews()),
    );
  }
}
