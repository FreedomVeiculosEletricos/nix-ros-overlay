
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, message-filters, nav-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-track-odometry";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/track_odometry/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "1eda84521b97dee8b0b0fc33a67647399ba3c073aecda43976ba680f1e0f3e27";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ eigen geometry-msgs message-filters nav-msgs neonavigation-common roscpp sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Odometry slip compensation package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
