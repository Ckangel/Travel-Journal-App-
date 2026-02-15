onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => DetailEntryScreen(entry: entry),
    ),
  );
}
