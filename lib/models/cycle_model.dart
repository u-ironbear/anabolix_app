class CycleModel {
  final String id;
  final String title;
  final String purpose;
  final String description;
  final int durationWeeks;
  final int level;

  CycleModel({
    this.id,
    this.title,
    this.purpose,
    this.description,
    this.durationWeeks,
    this.level,
  });

  CycleModel.fromData(Map<String, dynamic> data)
      : id = data['id'],
        title = data['title'],
        purpose = data['purpose'],
        description = data['description'],
        durationWeeks = data['duration_weeks'],
        level = data['level'];
}

class CycleComponent {
  final String name;
  final String singleDosage;
  final int startDay;
  final int endDay;
  final int periodDays;

  CycleComponent(
    this.name,
    this.singleDosage,
    this.startDay,
    this.endDay,
    this.periodDays,
  );

  CycleComponent.fromData(Map<String, dynamic> data)
      : name = data['name'],
        singleDosage = data['single_dosage'],
        startDay = data['start_day'],
        endDay = data['end_day'],
        periodDays = data['period_days'];
}
