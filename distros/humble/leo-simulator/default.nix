
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, leo-gz-bringup, leo-gz-plugins, leo-gz-worlds }:
buildRosPackage {
  pname = "ros-humble-leo-simulator";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_simulator-release/archive/release/humble/leo_simulator/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "c63804e7c69a9aa4732e0ecf97ff45b6f4d3a69f54be811ffa009282cf129303";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ leo-gz-bringup leo-gz-plugins leo-gz-worlds ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for Leo Rover Gazebo simulation in ROS2";
    license = with lib.licenses; [ mit ];
  };
}
