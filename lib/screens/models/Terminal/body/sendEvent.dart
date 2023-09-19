class SendEvent {
  final String type;
  final String action;
  final Object data;

  SendEvent ({
    required this.type, 
    required this.action, 
    required this.data});
}