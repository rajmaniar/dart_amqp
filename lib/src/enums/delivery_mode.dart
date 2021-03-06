part of dart_amqp.enums;

class DeliveryMode extends Enum<int> {
  static const DeliveryMode TRANSIENT = const DeliveryMode._(1);
  static const DeliveryMode PERSISTENT = const DeliveryMode._(2);

  const DeliveryMode._(int value) : super(value);

  static DeliveryMode valueOf(int value) {
    DeliveryMode fromValue = value == TRANSIENT._value ? TRANSIENT :
                             value == PERSISTENT._value ? PERSISTENT : null;

    if (fromValue == null) {
      throw new ArgumentError("Invalid delivery mode value ${value}");
    }
    return fromValue;
  }

  static String nameOf(DeliveryMode value) {
    return value == TRANSIENT ? "TRANSIENT" :
           value == PERSISTENT ? "PERSISTENT" : null;
  }
}