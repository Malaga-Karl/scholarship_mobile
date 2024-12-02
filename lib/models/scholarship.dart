class Scholarship {
  final int id;
  final String? image;
  final String title;
  final int slots;
  final String deadline;
  final String desc;
  final List<String> eligibility;
  final List<String> reqs;
  final List<String> benefits;

  Scholarship({
    required this.id,
    this.image,
    required this.title,
    required this.slots,
    required this.deadline,
    required this.desc,
    required this.eligibility,
    required this.reqs,
    required this.benefits,
  });
}
