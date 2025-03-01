import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/di/di.dart';
import 'src/bond%20details/domain/usecase/get_bond_details.dart';
import 'src/bond%20details/presentation/bloc/bond_details_bloc.dart';
import 'src/bonds%20list/domain/usecase/get_bonds.dart';
import 'src/bonds%20list/presentation/bloc/bonds_list_bloc.dart';
import 'src/bonds%20list/presentation/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BondsListBloc(getIt<GetBonds>())),
        BlocProvider(
          create: (context) => BondDetailsBloc(getIt<GetBondDetail>()),
        ),
      ],
      child: MaterialApp(
        title: 'TAP Investment',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
