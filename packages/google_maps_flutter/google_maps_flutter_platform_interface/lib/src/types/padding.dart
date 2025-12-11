import 'package:flutter/foundation.dart';

/// Represents internal padding values used when invoking fitBounds operations
/// on a Google Map to ensure the bounds fit with respect to padding from
/// the edges of the map viewport.
@immutable
class BoundsPadding {
  /// Creates a map padding specification for fitBounds operations.
  ///
  /// This padding is used internally when calling fitBounds to ensure that
  /// the specified bounds are visible with appropriate spacing from the
  /// map edges. All padding values default to 0 and represent distances
  /// in logical pixels.
  ///
  /// The parameters specify the padding for each edge of the map:
  /// - [bottom]: padding from the bottom edge of the map (defaults to 0)
  /// - [left]: padding from the left edge of the map (defaults to 0)
  /// - [right]: padding from the right edge of the map (defaults to 0)
  /// - [top]: padding from the top edge of the map (defaults to 0)
  const BoundsPadding({
    this.bottom = 0,
    this.left = 0,
    this.right = 0,
    this.top = 0,
  });

  /// Creates a map padding specification for fitBounds operations with all
  /// edges having the same padding value.
  ///
  /// This is a convenience constructor that sets all padding values to the
  /// specified [value].
  const BoundsPadding.all(double value)
    : bottom = value,
      left = value,
      right = value,
      top = value;

  /// The padding value from the bottom edge of the map in logical pixels.
  final double bottom;

  /// The padding value from the left edge of the map in logical pixels.
  final double left;

  /// The padding value from the right edge of the map in logical pixels.
  final double right;

  /// The padding value from the top edge of the map in logical pixels.
  final double top;

  /// Converts this object to something serializable in JSON.
  Map<String, double> toJson() => <String, double>{
    'bottom': bottom,
    'left': left,
    'right': right,
    'top': top,
  };
}
