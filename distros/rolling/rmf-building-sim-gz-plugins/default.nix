
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-gui-vendor, gz-msgs-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-sim-vendor, gz-transport-vendor, menge-vendor, qt5, rclcpp, rmf-door-msgs, rmf-fleet-msgs, rmf-lift-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-building-sim-gz-plugins";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/rolling/rmf_building_sim_gz_plugins/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "9f976668dec86f94ddcd667a6a7198e3707b5268a69f878a9314d3c9070bea97";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gz-gui-vendor gz-msgs-vendor gz-plugin-vendor gz-rendering-vendor gz-sim-vendor gz-transport-vendor menge-vendor qt5.qtbase qt5.qtdeclarative rclcpp rmf-door-msgs rmf-fleet-msgs rmf-lift-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo plugins for building infrastructure simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
