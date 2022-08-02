import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:watan_task1/business_logic/bloc_observer.dart';
import 'package:watan_task1/business_logic/global_cubit/global_cubit.dart';
import 'package:watan_task1/data/local/cache_helper.dart';
import 'package:watan_task1/data/remote/dio_helper.dart';
import 'package:watan_task1/presentation/screens/shared/details_screen.dart';
import 'package:watan_task1/presentation/widget/toast.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

import 'presentation/styles/color_manager.dart';


late LocalizationDelegate delegate;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
        () async {
      DioHelper.init();
      await CacheHelper.init();
      // final locale = CacheHelper.getDataFromSharedPreference(key: 'language') ?? "ar";
      const locale = "en";
      delegate = await LocalizationDelegate.create(
        fallbackLocale: locale,
        supportedLocales: ['ar', 'en'],
      );
      await delegate.changeLocale(const Locale(locale));
      // mohamed mmdouh
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatefulWidget {

  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Intl.defaultLocale = delegate.currentLocale.languageCode;

    delegate.onLocaleChanged = (Locale value) async {
      try {
        setState(() {
          Intl.defaultLocale = value.languageCode;
        });
      } catch (e) {
        showToast(e.toString());
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ((context) => GlobalCubit()),
        ),
      ],
      child: BlocConsumer<GlobalCubit, GlobalState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Sizer(
            builder: (context, orientation, deviceType) {
              return LocalizedApp(
                delegate,
                LayoutBuilder(builder: (context, constraints) {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: 'Watan Task1',
                    localizationsDelegates: [
                      GlobalCupertinoLocalizations.delegate,
                      DefaultCupertinoLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      delegate,
                    ],
                    locale: delegate.currentLocale,
                    supportedLocales: delegate.supportedLocales,
                    // onGenerateRoute: RoutesGenerator.getRoutes,
                    // initialRoute: RoutesManager.motoSecondRoute,
                    home: const DetailsScreen(),
                    theme: ThemeData(
                      fontFamily: 'cairo',
                      //scaffoldBackgroundColor: AppColors.white,
                      appBarTheme: AppBarTheme(
                        elevation: 0.0,
                        backgroundColor: ColorManager.whiteDark,
                        systemOverlayStyle: const SystemUiOverlayStyle(
                          //statusBarColor: AppColors.transparent,
                          statusBarIconBrightness: Brightness.dark,
                        ),
                      ),
                      scaffoldBackgroundColor: ColorManager.whiteDark,
                    ),
                  );
                }),
              );
            },
          );
        },
      ),
    );
  }
}