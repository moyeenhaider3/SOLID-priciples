// Single Responsibility Principle (SRP) Example

/** Incorrect Approach **/
class Task {
  String description;
  DateTime dueDate;

  Task(this.description, this.dueDate);

  /**
   * Problem:
   * This method violates SRP by handling both saving to the database
   * and printing details.
   *
   * Issues:
   * - Lack of separation of concerns: Combining saving and printing
   *   responsibilities makes the code harder to understand and maintain.
   * - Reduced reusability: The method is tightly coupled to both saving
   *   and printing, limiting its usability in other contexts.
   */
  void saveAndPrintDetails() {
    // Save task to database
    // Also, handle printing details here
  }
}

/** Corrected Approach **/
class Task {
  String description;
  DateTime dueDate;

  Task(this.description, this.dueDate);

  /**
   * Improvement:
   * This method is responsible for saving the task to the database.
   *
   * Benefits:
   * - Improved separation of concerns: Saving and printing responsibilities
   *   are now in separate methods, making the code more modular.
   * - Increased reusability: Each method has a focused responsibility,
   *   allowing for better reuse in different parts of the codebase.
   */
  void saveToDatabase() {
    // Save task to database
  }

  /**
   * Improvement:
   * This method is responsible for printing task details.
   *
   * Benefits:
   * - Clearer and more focused functionality: Each method does one thing,
   *   making the code easier to comprehend and maintain.
   * - Better adherence to SRP: The class now follows the Single Responsibility
   *   Principle, with each method having a single reason to change.
   */
  void printDetails() {
    // Print task details
  }
}

/**
 * Explanation:
 * The initial approach violated SRP by combining the responsibilities of saving to the database
 * and printing details in a single method. The corrected approach separates these responsibilities
 * into two distinct methods - one for saving and another for printing details. This sticks to SRP
 * by making each class or method have only one reason to change, enhancing maintainability.
 */
