
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gz-plugin-vendor, gz-sim-vendor }:
buildRosPackage {
  pname = "ros-rolling-leo-gz-plugins";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/rolling/leo_gz_plugins/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "2458872cb11fed4c44945c3b77566c0d2733efc1860bcb990e6a8068a5b90d42";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ gz-plugin-vendor gz-sim-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Plugins for Leo Rover Gazebo simulation in ROS 2";
    license = with lib.licenses; [ mit ];
  };
}
