
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-tf2-eigen";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_eigen/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "d8e69f33ea09871b6e897e9bfc4071e8814138b0b32745415928b9dca7b50ba6";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ eigen geometry-msgs tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "tf2_eigen";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
