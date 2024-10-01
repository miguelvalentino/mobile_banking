class NotificationObject {
  final String title;
  final String description;
  final String timestamp;
  bool read;

  NotificationObject(this.title, this.description, this.timestamp, {this.read = false});
}

class NotificationObjectModel {
  static List<String> fakeTitles = [
    'Code Smell',
    'Control Flow',
    'Interpreter',
  ];
  
  static List<String> fakeDescriptions = [
    'Recursion',
    'Sprint',
    'Heisenbug',
  ];
  
  static const String fakeTimestamp = "12/12/2012";

  static List<NotificationObject> generateFakeNotificationObjects() {
    List<NotificationObject> NotificationObjects = [];
    for (int i=0;i<3;i++) {
      String title=fakeTitles[i];
      String description=fakeDescriptions[i];
      NotificationObjects.add(NotificationObject(title, description, fakeTimestamp));
    }
    return NotificationObjects;
  }
}
