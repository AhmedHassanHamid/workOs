
class NoteForListing {
  String noteID;
  String noteTitle;
  DateTime createDateTime;
  DateTime LatestEditDateTime;

  NoteForListing(
  {  this.noteID,
    this.noteTitle,
    this.createDateTime,
    this.LatestEditDateTime,});
    

    factory NoteForListing.fromJson(Map<String, dynamic> item){
      return NoteForListing(
            noteID: item['noteID'],
            noteTitle: item['noteTitle'],
            createDateTime: DateTime.parse(item['createDateTime']),
            LatestEditDateTime: item['LatestEditDateTime'] != null
                ? DateTime.parse(item['LatestEditDateTime'])
                : null,
          );
    }

}