
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gl-dependency, python-qt-binding, python3Packages, rospy, rostopic, rqt-gui, rqt-gui-py, rqt-py-common, tf }:
buildRosPackage {
  pname = "ros-noetic-rqt-pose-view";
  version = "0.5.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_pose_view-release/archive/release/noetic/rqt_pose_view/0.5.13-1.tar.gz";
    name = "0.5.13-1.tar.gz";
    sha256 = "b6ba80f7e0af839eea68728cbd72fa538049c3b3a4c79aa8fcf3b537340b2796";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ geometry-msgs gl-dependency python-qt-binding python3Packages.pyopengl python3Packages.rospkg rospy rostopic rqt-gui rqt-gui-py rqt-py-common tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_pose_view provides a GUI plugin for visualizing 3D poses.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
