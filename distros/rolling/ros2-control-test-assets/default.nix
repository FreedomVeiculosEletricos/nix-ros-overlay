
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-ros2-control-test-assets";
  version = "4.29.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/ros2_control_test_assets/4.29.0-1.tar.gz";
    name = "4.29.0-1.tar.gz";
    sha256 = "d3ff75fa025eadf9b58bff81775eb5d56ee23458967183950816611656564d8a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared test resources for ros2_control stack";
    license = with lib.licenses; [ asl20 ];
  };
}
