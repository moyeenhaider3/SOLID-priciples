// Liskov Substitution Principle (LSP) Example

/** Incorrect Approach **/
class Bird {
  void fly() {
    /**
     * Problem:
     * This method violates LSP by implying that all birds can fly,
     * including those that can't, like penguins.
     *
     * Issues:
     * - Incorrect behavior for certain subclasses: The fly method
     *   is not suitable for all bird types, leading to incorrect behavior
     *   for birds like penguins.
     * - Violates LSP: Subclasses should be usable wherever their base class
     *   is used, and the fly method is not applicable to all birds.
     */
    print("Bird is flying");
  }
}

class Penguin extends Bird {
  // Penguins can't fly, but they are forced to implement the fly method.
}

/** Corrected Approach **/
abstract class Bird {
  void fly();
}

class Sparrow extends Bird {
  @override
  void fly() {
    /**
     * Improvement:
     * This method correctly implements flying behavior for sparrows.
     *
     * Benefits:
     * - Satisfy to LSP: Subclasses now implement methods that make sense
     *   for their types, sticks to the Liskov Substitution Principle.
     * - Correct behavior for each subclass: The fly method is appropriately
     *   implemented for birds like sparrows.
     */
    print("Sparrow is flying");
  }
}

class Penguin extends Bird {
  @override
  void fly() {
    /**
     * Improvement:
     * Penguins might not implement the fly method since they can't fly.
     *
     * Benefits:
     * - Satisfy to LSP: Penguins are not forced to implement the fly method,
     *   allowing subclasses to choose methods suitable for their types.
     */
    print("Penguin can't fly");
  }
}

/**
 * Explanation:
 * The initial approach violated LSP by forcing all subclasses to implement
 * the fly method, which is not suitable for all birds. The corrected approach
 * introduces an abstract Bird class and allows subclasses to implement methods
 * that make sense for their types, Satisfying to the Liskov Substitution Principle.
 */
