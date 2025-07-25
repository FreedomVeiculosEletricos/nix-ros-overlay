
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, pkg-config, pluginlib, python-qt-binding, qt-gui, qt5, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-rolling-qt-gui-cpp";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/qt_gui_core-release/archive/release/rolling/qt_gui_cpp/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "9098b961881f8a92356ded6bfbf8c00bb0522b15f65a482470c013a21f3d11fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config python-qt-binding qt5.qtbase ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib qt-gui tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "qt_gui_cpp provides the foundation for C++-bindings for qt_gui and creates bindings for every generator available.
    At least one specific binding must be available in order to use C++-plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
