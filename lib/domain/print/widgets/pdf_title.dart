part of '../pdf_creator.dart';

class _PdfTitle extends StatelessWidget {
  @override
  Widget build(Context context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Logbuch',
            style: TextStyle(
              color: PdfColors.black,
              fontSize: 36.0,
              letterSpacing: 7.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            'Dokumentation der Weiterbildung gemäß Weiterbildungsordnung (WBO)',
            style: TextStyle(
              color: PdfColors.black,
              fontSize: 12.0,
              letterSpacing: 1.0,
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            'über die Facharztweiterbildung',
            style: TextStyle(
              color: PdfColors.black,
              fontSize: 14.0,
              letterSpacing: 1.0,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            'Anästhesiologie',
            style: TextStyle(
              color: PdfColors.black,
              fontSize: 20.0,
              letterSpacing: 1.0,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
