
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosgraph }:
buildRosPackage {
  pname = "ros-noetic-rosparam";
  version = "1.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/rosparam/1.17.3-1.tar.gz";
    name = "1.17.3-1.tar.gz";
    sha256 = "1df75290add4fb41d590b2cf8a02cf7c34b1f220acf0e804771b00f4b4cb5113";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.pyyaml rosgraph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "rosparam contains the rosparam command-line tool for getting and
    setting ROS Parameters on the <a href=\"http://wiki.ros.org/Parameter%20Server\">Parameter
    Server</a> using YAML-encoded files. It also contains an
    experimental library for using YAML with the Parameter
    Server. This library is intended for internal use only.

    rosparam can be invoked within a <a href=\"http://wiki.ros.org/roslaunch\">roslaunch</a> file.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
