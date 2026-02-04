class JournalEntry {
  final String note;
  final String? photoPath;
  final double? latitude;
  final double? longitude;

  JournalEntry({
    required this.note,
    this.photoPath,
    this.latitude,
    this.longitude,
  });
}
