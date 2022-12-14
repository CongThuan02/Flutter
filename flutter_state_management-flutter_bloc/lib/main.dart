import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/count/count_view.dart';
import 'count/cubit/count_cubit.dart';
import 'random/bloc/random_bloc.dart';
import 'random/random_view.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<CountCubit>(
        create: (BuildContext context) => CountCubit(),
      ),
      BlocProvider<RandomBloc>(
        create: (BuildContext context) => RandomBloc(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'You have pushed the button this many times:',
            ),
            CountView(),
            Text("Bloc -----------------------"),
            RandomView()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CountCubit>().increment();
          context.read<RandomBloc>().add(GetRandom());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.no_accounts),
      ),
    );
  }
}
