/// Bundles different elapsed times
class Stats {
  /// Total time taken in the isolate where the inference runs
  int totalPredictTime;

  /// [totalPredictTime] + communication overhead time
  /// between main isolate and another isolate
  int totalElapsedTime;

  /// Time for which inference runs
  int inferenceTime;

  /// Time taken to pre-process the image
  int preProcessingTime;
  List<String> labels;

  Stats(
      {this.totalPredictTime,
      this.totalElapsedTime,
      this.inferenceTime,
      this.preProcessingTime,
      this.labels});

  @override
  String toString() {
    return 'Stats{totalPredictTime: $totalPredictTime, totalElapsedTime: $totalElapsedTime, inferenceTime: $inferenceTime, preProcessingTime: $preProcessingTime, labels: $labels}';
  }
}
