// Open/Closed Principle (OCP) Example

/** Incorrect Approach **/
class Shape {
  double calculateArea(dynamic shape) {
    /**
     * Problem:
     * This method violates the OCP by using a single method to calculate
     * the area of different shapes. Any addition of a new shape would require
     * modifying the existing code, making it closed for extension.
     *
     * Issues:
     * - Code modification required: Adding a new shape means modifying
     *   the existing method, which is against the OCP.
     * - Limited extensibility: The code is not open for extension to new shapes
     *   without altering the existing, working code.
     */
    if (shape is Circle) {
      return 3.14 * shape.radius * shape.radius;
    } else if (shape is Square) {
      return shape.side * shape.side;
    }
  }
}

/** Corrected Approach **/
abstract class Shape {
  double area();
}

class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    /**
     * Improvement:
     * This method calculates the area of a circle.
     *
     * Benefits:
     * - Conforms to OCP: The code is open for extension by allowing new
     *   shapes to be added without modifying existing code.
     * - Easier to add new shapes: Adding a new shape is as simple as creating
     *   a new class that implements the Shape interface.
     */
    return 3.14 * radius * radius;
  }
}

class Square implements Shape {
  double side;

  Square(this.side);

  @override
  double area() {
    /**
     * Improvement:
     * This method calculates the area of a square.
     *
     * Benefits:
     * - Conforms to OCP: The code is open for extension by allowing new
     *   shapes to be added without modifying existing code.
     * - Easier to add new shapes: Adding a new shape is as simple as creating
     *   a new class that implements the Shape interface.
     */
    return side * side;
  }
}

/**
 * Explanation:
 * The initial approach violated the OCP by using a single method to calculate
 * the area of different shapes, requiring code modification for each new shape.
 * The corrected approach introduces an abstract Shape class, allowing new shapes
 * to be added without altering existing code. This conforms to the Open/Closed Principle.
 */
