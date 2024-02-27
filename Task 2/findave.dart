double? findAverageRating(List<int> ratings) {
  if (ratings.isEmpty) {
    return null;
  }

  double sum = 0;
  for (int rating in ratings) {
    sum += rating;
  }

  return sum / ratings.length;
}

void main() {
  List<int> movieRatings1 = [4, 5, 3, 2, 5];
  List<int> movieRatings2 = [];

  double? averageRating1 = findAverageRating(movieRatings1);
  double? averageRating2 = findAverageRating(movieRatings2);

  print("Average rating 1: $averageRating1");
  print("Average rating 2: $averageRating2");
}
