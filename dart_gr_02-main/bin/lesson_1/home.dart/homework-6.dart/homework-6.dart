import 'subjects.dart';
import 'person.dart';
import 'student.dart';
import 'teacher.dart';

void main(){
  Teacher teacher =Teacher('Оморова Айнура Асанбаевна', 28, false, 8);
  teacher.introduce();

  Student student1 = Student('Топаев Атай', 19, false, {
  Subject.math: 90,
      Subject.physics: 88,
      Subject.english: 92,
  });
    student1.introduce();
    student1.showMarks();

  Student student2 = Student('Абдиллаев Омурбек', 19, false,{
  Subject.math: 80,
      Subject.physics: 65,
      Subject.english: 72,
      Subject.physics: 61,
});
  student2.introduce();
  student2.showMarks();
}