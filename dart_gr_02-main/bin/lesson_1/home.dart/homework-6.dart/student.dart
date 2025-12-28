import 'subjects.dart';
import 'person.dart';


class Student extends Person{

Map<Subject, double> marks;
  
  Student(String fullName, int age, bool isMarried, this.marks): super (fullName, age , isMarried);
  
  void showMarks(){
    print('Student: $fullName');
    for(var entry in marks.entries) {
    print('${entry.key} : ${entry.value}');
    }
  }

  double calculateAverage(){
    double sum = 0;
    
    for (var value in marks.values) {
      sum += value;
    }
    return marks.isEmpty ? 0 : sum / marks.length;
  }
    @override
    void introduce() {
    super.introduce();
    print('Average mark: ${calculateAverage()}');
    }
}