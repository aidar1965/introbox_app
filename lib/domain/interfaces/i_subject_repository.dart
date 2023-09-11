import '../models/subject.dart';

abstract class ISubjectsRepository {
  List<Subject> get subjects;
  void addSubject(Subject subject);
  void getSubject();
  void updateSubject(Subject subject);

  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);
}
