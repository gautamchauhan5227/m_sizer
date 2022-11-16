part of m_sizer;

extension SizerExt on num {
  double get h => this * SizerUtil.height;
  double get w => this * SizerUtil.width;
}
