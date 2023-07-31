import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package
import 'package:quran/quran.dart' as quran;

class SurahPage extends StatelessWidget {
  final int selectedSurahIndex;

  const SurahPage({required this.selectedSurahIndex});

  @override
  Widget build(BuildContext context) {
    final verseCount = quran.getVerseCount(selectedSurahIndex + 1);
    final verses = List.generate(verseCount, (index) {
      final verseNumber = index + 1;
      final formattedVerseNumber = _formatNumberToArabic(verseNumber); // Format the verse number to Arabic
      final verseText = quran.getVerse(selectedSurahIndex + 1, verseNumber);
      return '$verseText ($formattedVerseNumber)';
    });

    final surahName = quran.getSurahNameArabic(selectedSurahIndex + 1);

    return Scaffold(
      appBar: AppBar(
        title: Text(surahName),
        centerTitle: true,
        backgroundColor: Colors.brown[300],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (selectedSurahIndex != 0) // Exclude Bismillah from Al-Fatiha
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "بسم الله الرحمن الرحيم",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'QuranFont', // Use the same font family name as defined in the pubspec.yaml
                      ),
                    ),
                  ),
                ...verses.map((verse) => Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.brown[50],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      verse,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'QuranFont', // Use the same font family name as defined in the pubspec.yaml
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _formatNumberToArabic(int number) {
    // Function to format numbers to Arabic numerals
    final arabicNumbers = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    return number.toString().split('').map((digit) => arabicNumbers[int.parse(digit)]).join();
  }
}
