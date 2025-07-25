
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-conversions, pluginlib, roscpp, rtabmap-conversions, rtabmap-msgs, rviz, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-rviz-plugins";
  version = "0.21.13-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_rviz_plugins/0.21.13-1.tar.gz";
    name = "0.21.13-1.tar.gz";
    sha256 = "1f4c14af17e6dacd1d48b1778f66cb2c1f2f5aaaeb61d1ca65da47c215cd8d23";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pcl-conversions pluginlib roscpp rtabmap-conversions rtabmap-msgs rviz sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RTAB-Map's rviz plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
