
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-pose-list, mola-test-datasets, mp2p-icp, mrpt-libmaps, mrpt-libobs, mrpt-libslam }:
buildRosPackage {
  pname = "ros-humble-mola-relocalization";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_relocalization/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "5398d163eaa367c7dff2584b4c30a93357bc17cbd702505ec7656e0aaa3fb0dc";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ mola-test-datasets ];
  propagatedBuildInputs = [ mola-common mola-pose-list mp2p-icp mrpt-libmaps mrpt-libobs mrpt-libslam ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library with algorithms for relocalization, global localization, or pose estimation given a large initial uncertainty";
    license = with lib.licenses; [ gpl3Only ];
  };
}
