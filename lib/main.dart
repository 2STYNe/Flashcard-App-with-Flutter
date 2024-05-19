import 'package:flashcard_app_with_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
        drawerTheme: const DrawerThemeData(backgroundColor: Color(0xFF001D3D)),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFFA8DADC),
          onPrimary: Colors.black,
          background: Color(0xFFEFF7FD),
          onBackground: Colors.black,
          surface: Color(0xFFA8DADC),
          onSurface: Colors.black,
          error: Color(0xFFB42222),
          onError: Colors.black,
          secondary: Color(0xFF0E547D),
          onSecondary: Colors.white,
          tertiary: Color(0xFFB42222),
          onTertiary: Colors.black,
          outline: Color(0xFFF5F5F5),
        ),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.francoisOne(fontSize: 24),
          titleMedium: GoogleFonts.francoisOne(fontSize: 20),
          titleSmall: GoogleFonts.francoisOne(fontSize: 16),
          bodyLarge: GoogleFonts.inter(fontSize: 16),
          bodyMedium: GoogleFonts.inter(fontSize: 14),
          bodySmall: GoogleFonts.inter(fontSize: 12),
          labelLarge: GoogleFonts.inter(fontSize: 16),
        ),
        useMaterial3: true,
      ),
    );
  }
}
