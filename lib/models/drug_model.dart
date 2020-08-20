class DrugModel {
  final String name;
  final List<String> aliases;
  final String group;
  final String analogue;
  final String releaseForm;
  final String halfLife;
  final String durationOfAction;
  final List<String> keyChars;
  final List<String> description;
  final List<int> ratings;
  final String usagePrescription;
  final List<String> usageSport;
  final List<String> usageWomen;
  final List<String> interaction;
  final List<String> intakeDosage;
  final String specialConditions;
  final String cautions;
  final List<String> sideEffects;

  DrugModel(
    this.name,
    this.aliases,
    this.group,
    this.analogue,
    this.releaseForm,
    this.halfLife,
    this.durationOfAction,
    this.keyChars,
    this.description,
    this.ratings,
    this.usagePrescription,
    this.usageSport,
    this.usageWomen,
    this.interaction,
    this.intakeDosage,
    this.specialConditions,
    this.cautions,
    this.sideEffects,
  );

  DrugModel.fromData(Map<String, dynamic> data)
      : name = data['name'],
        aliases = List.from(data["aliases"]),
        group = data['group'],
        analogue = data['analogue'],
        releaseForm = data['release_form'],
        halfLife = data['half_life'],
        durationOfAction = data['duration_action'],
        keyChars = List.from(data['key_chars']),
        description = List.from(data['description']),
        ratings = List.from(data['ratings']),
        usagePrescription = data['usage_prescription'],
        usageSport = List.from(data['usage_sport']),
        usageWomen = List.from(data['usage_women']),
        interaction = List.from(data['interaction']),
        intakeDosage = List.from(data['intake_dosage']),
        specialConditions = data['special_conditions'],
        cautions = data['cautions'],
        sideEffects = List.from(data['side_effects']);
}
