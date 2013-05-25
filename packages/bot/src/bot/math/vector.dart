part of bot;

/**
 * Class reperesenting a 2d vector.
 **/
class Vector extends Coordinate {
  const Vector([num x = 0, num y = 0]) : super(x,y);

  /**
   * Computes the length of this [Vector].
   **/
  num get length => math.sqrt(x * x + y * y);

  Vector get normal => this.scale(1 / this.length);

  /**
   * Returns the angle between the positive x-axis and the [Vector].
   * Angle zero points in the +X direction, 90 degrees points in the +Y
   * direction (down) and from there we grow clockwise.
   **/
  num get angle => math.atan2(y, x);

  /**
   * Adds a [Coordinate] and returns the result as new [Vector].
   **/
  Vector operator +(Coordinate other) => new Vector(x + other.x, y + other.y);

  /**
   * Multiplies each dimensions by the provided magnitude and returns a new [Vector].
   **/
  Vector operator *(num magnitude) => this.scale(magnitude);

  /**
   * Multiplies each dimensions by the provided magnitude and returns a new [Vector].
   **/
  Vector scale(num magnitude) => new Vector(x * magnitude, y * magnitude);

  /**
   * Computes the dot product with the given [Vector].
   **/
  num dot(Vector other) => x * other.x + y * other.y;

  /**
   * Computes the cross product with the given [Vector].
   **/
  num cross(Vector other) => x * other.y - y * other.x;

  /**
   * Computes the angle between this and another [Vector].
   * Angle zero points in the +X direction, 90 degrees points in the +Y
   * direction (down) and from there we grow clockwise.
   **/
  num getAngle (Vector other) => other.angle - angle;

  Vector rotate(num angle) {
    var cos = math.cos(angle);
    var sin = math.sin(angle);
    var newX = this.x * cos - this.y * sin;
    var newY = this.y * cos + this.x * sin;
    return new Vector(newX, newY);
  }

  Vector rotateAroundPoint(Coordinate axisPoint, num angle) {
    return (this - axisPoint).rotate(angle) + axisPoint;
  }
}
