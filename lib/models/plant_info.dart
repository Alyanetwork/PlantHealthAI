// lib/models/plant_info.dart

class PlantInfo {
  final String plantName;
  final List<String> commonDiseases;

  PlantInfo({required this.plantName, required this.commonDiseases});
  
  static Map<String, PlantInfo> plants = {
    "Tomato": PlantInfo(
      plantName: "Tomato",
      commonDiseases: ["Leaf Spot", "Root Rot"],
    ),
  };

  static PlantInfo getPlantInfo(String plantName) {
    return plants[plantName] ?? PlantInfo(plantName: "Unknown", commonDiseases: []);
  }
}
