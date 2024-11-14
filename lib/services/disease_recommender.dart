// lib/services/disease_recommender.dart

class DiseaseRecommender {
  static List<String> getRecommendations(String diseaseName) {
    if (diseaseName == "Leaf Spot") {
      return [
        "Apply fungicide to affected leaves.",
        "Avoid direct sunlight on leaves.",
        "Regularly inspect for disease spread."
      ];
    }
    return ["No specific recommendation available."];
  }
}
