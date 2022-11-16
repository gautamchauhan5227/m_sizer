part of m_sizer;

/// Provides `Context`, `Orientation`, and `DeviceType` parameters to the builder function
typedef ResponsiveBuild = Widget Function(
  BuildContext context,
  Orientation orientation,
);

/// A widget that gets the device's details like orientation and constraints
///
/// Usage: Wrap MaterialApp with this widget
class MSizer extends StatelessWidget {
  const MSizer({Key? key, required this.builder}) : super(key: key);

  /// Builds the widget whenever the orientation changes
  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizerUtil.setScreenSize(constraints, orientation);
        return builder(
          context,
          orientation,
        );
      });
    });
  }
}
