class Note {
  String noteID;
  String noteTitle;
  String noteContent;
  DateTime createDateTime;
  DateTime LatestEditDateTime;

  Note(
  {  this.noteID,
    this.noteTitle,
    this.noteContent,
    this.createDateTime,
    this.LatestEditDateTime,});

    factory Note.fromJson(Map<String, dynamic> item){
      return Note(
            noteID: item['noteID'],
            noteTitle: item['noteTitle'],
            noteContent: item['noteContent'],
            createDateTime: DateTime.parse(item['createDateTime']),
            LatestEditDateTime: item['LatestEditDateTime'] != null
                ? DateTime.parse(item['LatestEditDateTime'])
                : null,
          );
    }
}