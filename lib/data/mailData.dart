import '../models/emailInfo.dart';
import '../models/mail.dart';

class MailData {
  
final mailList = [
  Mail(
    id: "2",
    sender: EmailInfo(name: "Carol Jones", email: "carol.jones@example.com"),
    receiver: EmailInfo(name: "David Brown", email: "david.brown@example.com"),
    sentTime: "09:15",
    subject: "Project Update",
    cc: ["alice.smith@example.com"],
    body: "Hi David,\n\nHere is the latest update on the project. Please review and let me know your thoughts.\n\nRegards,\nCarol",
  ),
  Mail(
    id: "3",
    sender: EmailInfo(name: "Emily Davis", email: "emily.davis@example.com"),
    receiver: EmailInfo(name: "Frank Harris", email: "frank.harris@example.com"),
    sentTime: "14:30",
    subject: "New Opportunity",
    body: "Hi Frank,\n\nI wanted to share a new opportunity with you. Let's discuss it further in our next meeting.\n\nBest,\nEmily",
  ),
  Mail(
    id: "4",
    sender: EmailInfo(name: "George Clark", email: "george.clark@example.com"),
    receiver: EmailInfo(name: "Hannah Lee", email: "hannah.lee@example.com"),
    sentTime: "08:45",
    subject: "Invoice Submission",
    cc: ["alice.smith@example.com", "bob.johnson@example.com"],
    body: "Hi Hannah,\n\nPlease find attached the invoice for this month.\n\nThank you,\nGeorge",
  ),
];
}