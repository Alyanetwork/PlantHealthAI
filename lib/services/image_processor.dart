// lib/services/image_processor.dart

import 'package:tflite/tflite.dart';

class ImageProcessor {
  Future<String> loadModel() async {
    return await Tflite.loadModel(
      model: "assets/model.tflite",
      labels: "assets/labels.txt",
    );
  }

  Future<List<dynamic>> analyzeImage(String imagePath) async {
    var output = await Tflite.runModelOnImage(
      path: imagePath,
      imageMean: 0.0,
      imageStd: 255.0,
      numResults: 5,
      threshold: 0.5,
    );
    return output;
  }
}
