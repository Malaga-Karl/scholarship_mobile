import 'emailInfo.dart';

class Mail {
  final String id;
  final EmailInfo sender;
  final EmailInfo receiver;
  final String sentTime;
  final String subject;
  final List<String>? cc;
  final String body;

  Mail({
    required this.id,
    required this.sender,
    required this.receiver,
    required this.sentTime,
    required this.subject,
    this.cc,
    required this.body,
  });
}
