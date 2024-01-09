// Dependency Inversion Principle (DIP) Example

/** Incorrect Approach **/
class LightBulb {
  void turnOn() {
    // Implementation to turn on the light bulb
  }

  void turnOff() {
    // Implementation to turn off the light bulb
  }
}

class Switch {
  LightBulb bulb;

  Switch(this.bulb);

  void operate() {
    /**
     * Problem:
     * This method violates DIP by depending on a specific implementation
     * (LightBulb) rather than an abstraction. It tightly couples the Switch
     * class to the LightBulb class.
     *
     * Issues:
     * - High-level module depends on low-level module: Switch depends on
     *   the concrete implementation of LightBulb, violating DIP.
     * - Reduced flexibility: Changing the light bulb implementation requires
     *   modifying the Switch class.
     */
    if (bulb.isOn) {
      bulb.turnOff();
    } else {
      bulb.turnOn();
    }
  }
}

/** Corrected Approach **/
abstract class Switchable {
  void turnOn();
  void turnOff();
}

class LightBulb implements Switchable {
  bool isOn = false;

  @override
  void turnOn() {
    // Implementation to turn on the light bulb
    isOn = true;
  }

  @override
  void turnOff() {
    // Implementation to turn off the light bulb
    isOn = false;
  }
}

class Switch {
  Switchable device;

  Switch(this.device);

  void operate() {
    /**
     * Improvement:
     * This method now depends on an abstraction (Switchable) rather than
     * a specific implementation (LightBulb). It sticks to DIP by allowing
     * high-level modules to depend on abstractions.
     *
     * Benefits:
     * - Satisfies to DIP: The Switch class now depends on the abstraction
     *   (Switchable) rather than the concrete implementation (LightBulb).
     * - Increased flexibility: Switch can operate any device implementing
     *   the Switchable interface without modification.
     */
    if (device.isOn) {
      device.turnOff();
    } else {
      device.turnOn();
    }
  }
}

/**
 * Explanation:
 * The initial approach violated DIP by having the Switch class depend on
 * a specific implementation (LightBulb). The corrected approach introduces
 * an abstraction (Switchable), allowing high-level modules to depend on
 * abstractions, showing the Dependency Inversion Principle.
 */
