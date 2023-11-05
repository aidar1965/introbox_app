import '../../domain/models/subject.dart';

typedef DbData = Map<String, dynamic>;

class LocalDbMapper {
  Subject mapSubject(DbData data) {
    return Subject(
      id: data['id'],
      title: data['title'],
      description: data['description'],
      date: DateTime.parse(data['created_at']),
      pdfUrl: data['pdf_file'],
    );
  }
}
