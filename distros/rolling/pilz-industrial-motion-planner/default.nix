
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, boost, eigen3-cmake-module, generate-parameter-library, geometry-msgs, launch-param-builder, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-resources-prbt-moveit-config, moveit-resources-prbt-pg70-support, moveit-resources-prbt-support, moveit-ros-move-group, moveit-ros-planning, orocos-kdl-vendor, pilz-industrial-motion-planner-testutils, pluginlib, rclcpp, ros-testing, tf2, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-pilz-industrial-motion-planner";
  version = "2.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/pilz_industrial_motion_planner/2.13.2-1.tar.gz";
    name = "2.13.2-1.tar.gz";
    sha256 = "e1624ddaf73b9fff43ca249d6d1f19dcd5d515995d19fb7f68c8b9599990b732";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest boost launch-param-builder moveit-configs-utils moveit-resources-panda-moveit-config moveit-resources-prbt-moveit-config moveit-resources-prbt-pg70-support moveit-resources-prbt-support pilz-industrial-motion-planner-testutils ros-testing ];
  propagatedBuildInputs = [ eigen3-cmake-module generate-parameter-library geometry-msgs moveit-common moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning orocos-kdl-vendor pluginlib rclcpp tf2 tf2-eigen tf2-eigen-kdl tf2-geometry-msgs tf2-kdl tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "MoveIt plugin to generate industrial trajectories PTP, LIN, CIRC and sequences thereof.";
    license = with lib.licenses; [ bsd3 ];
  };
}
