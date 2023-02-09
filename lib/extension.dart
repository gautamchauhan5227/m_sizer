part of m_sizer;

extension SizerExt on num {
  double get hPX => this * SizerUtil.height;
  double get wPX => this * SizerUtil.width;
  double get fPX => this * SizerUtil.font;
}
