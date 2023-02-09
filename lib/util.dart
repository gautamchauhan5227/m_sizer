part of m_sizer;

class SizerUtil {
  /// Device's BoxConstraints
  static late BoxConstraints boxConstraints;

  /// Device's Orientation
  static late Orientation orientation;

  static late BuildContext context;

  /// Device's Height
  static late double height;

  /// Device's Width
  static late double width;

  static late double font;

  /// Sets the Screen's size and Device's Orientation,
  /// BoxConstraints, Height, and Width
  static void setScreenSize(
      BoxConstraints constraints, Orientation currentOrientation) {
    // Sets boxconstraints and orientation
    boxConstraints = constraints;
    orientation = currentOrientation;

    // Sets screen width and height
    if (orientation == Orientation.portrait) {
      height = (constraints.maxHeight / 759);
      width = (constraints.maxWidth / 360);
      font = (constraints.maxWidth / 360) > 1.5
          ? 1.5
          : (constraints.maxWidth / 360);
    } else {
      width = (constraints.maxWidth / 759);
      height = (constraints.maxHeight / 360);
      font = (constraints.maxWidth * 1.5);
    }

    // Sets ScreenType
  }
}
