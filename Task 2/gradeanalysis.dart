Map<String, dynamic>? analyzeGrades(List<int> grades) {
  if (grades.isEmpty) {
    return null; //emp
  }

  int numStudents = grades.length;
  double sumGrades = 0;
  int numValedictorians = 0;
  int numFailed = 0;

  for (int grade in grades) {
    sumGrades += grade;
    if (grade > 85) {
      numValedictorians++;
    } else if (grade < 40) {
      numFailed++;
    }
  }

  double averageGrade = sumGrades / numStudents;

  return {
    'numStudents': numStudents,
    'averageGrade': averageGrade,
    'numValedictorians': numValedictorians,
    'numFailed': numFailed,
  };
}

void main() {
  List<int> studentGrades1 = [75, 90, 82, 60, 95];
  List<int> studentGrades2 = [];

  var analysis1 = analyzeGrades(studentGrades1);
  var analysis2 = analyzeGrades(studentGrades2);

  print("Analysis 1: $analysis1");
  print("Analysis 2: $analysis2");
}
