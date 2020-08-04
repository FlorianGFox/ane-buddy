part of '../pdf_creator.dart';

class _PdfProfile extends StatelessWidget {
  final Profile profile;

  _PdfProfile(this.profile);

  @override
  Widget build(Context context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Angaben zur Person',
          style: TextStyle(
            color: PdfColors.black,
            fontSize: 14.0,
            letterSpacing: 1.0,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15.0),
        Row(
          children: <Widget>[
            _buildStandardText('Name/Vorname (Rufname ist unterstrichen): '),
            _buildStandardText(profile.lastName ?? ''),
            _buildStandardText(' / '),
            _buildStandardText(profile.firstName ?? '', true),
          ],
        ),
        SizedBox(height: 5.0),
        _buildStandardText('Geb.-Datum: ${profile.birthday ?? ''}'),
        SizedBox(height: 5.0),
        _buildStandardText(
            'Geburtsort/ggf. -land: ${profile.birthPlace ?? ''}'),
        SizedBox(height: 15.0),
        Row(
          children: <Widget>[
            _buildStandardText(
                'Akademische Grade:    Dr. med: ${(profile.hasDrMed ?? false) ? 'Ja' : 'Nein'}'),
            SizedBox(width: 30.0),
            _buildStandardText('sonstige: ${profile.otherDegrees ?? ''}'),
          ],
        ),
        SizedBox(height: 5.0),
        Row(
          children: <Widget>[
            SizedBox(width: 60.0),
            _buildStandardText(
                'ausländische Grade: ${(profile.hasForeignDegree ?? false) ? 'Ja' : 'Nein'}'),
            SizedBox(width: 30.0),
            _buildStandardText('welche: ${profile.foreignDegrees ?? ''}'),
          ],
        ),
        SizedBox(height: 15.0),
        _buildStandardText(
            'Ärztliche Prüfung: ${profile.medicalExamDate ?? ''}'),
        SizedBox(height: 5.0),
        _buildStandardText(
            'Zahnärztliches Staatsexamen [nur bei MKG-Chirurgie]: ${profile.dentalExamDate ?? ''}'),
        SizedBox(height: 5.0),
        _buildStandardText(
            'Approbation als Arzt bzw. Berufserlaubnis: ${profile.approvalDate ?? ''}'),
      ],
    );
  }

  Widget _buildStandardText(String text, [bool underline = false]) {
    return Text(
      text,
      style: TextStyle(
        color: PdfColors.black,
        fontSize: 10.0,
        letterSpacing: 1.0,
        decoration: underline ? TextDecoration.underline : TextDecoration.none,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
