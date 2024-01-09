// Interface Segregation Principle (ISP) Example

/** Incorrect Approach **/
abstract class Worker {
  void work() {
    /**
     * Problem:
     * This method violates ISP by requiring all workers to implement
     * methods for work, eat, and sleep, even if they do not need all of them.
     *
     * Issues:
     * - Unnecessary method implementation: Workers like RobotWorker may not
     *   need to implement eat and sleep, leading to unnecessary code.
     * - Violates ISP: The interface is not segregated, forcing classes to
     *   implement methods they may not need.
     */
  }

  void eat() {
    // Implementation for eat
  }

  void sleep() {
    // Implementation for sleep
  }
}

/** Corrected Approach **/
abstract class Workable {
  void work();
}

abstract class Eatable {
  void eat();
}

abstract class Sleepable {
  void sleep();
}

class Worker implements Workable, Eatable, Sleepable {
  @override
  void work() {
    /**
     * Improvement:
     * This method correctly implements the work behavior for Worker class.
     *
     * Benefits:
     * - Satisfies to ISP: The interface is now segregated into smaller interfaces,
     *   allowing classes to implement only what they need.
     * - Clearer and focused behavior: Each interface represents a specific behavior,
     *   making the code more modular and easier to understand.
     */
  }

  @override
  void eat() {
    // Implementation for eat
  }

  @override
  void sleep() {
    // Implementation for sleep
  }
}

class RobotWorker implements Workable {
  @override
  void work() {
    /**
     * Improvement:
     * This method correctly implements the work behavior for RobotWorker class.
     *
     * Benefits:
     * - Satisfies to ISP: RobotWorker only implements the Workable interface,
     *   avoiding unnecessary method implementations for eat and sleep.
     */
  }
}

/**
 * Explanation:
 * The initial approach violated ISP by requiring all workers to implement
 * methods for work, eat, and sleep, even if they do not need all of them.
 * The corrected approach segregates the interfaces, allowing classes to implement
 * only what they need, sticks to the Interface Segregation Principle.
 */
