
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-spatem-ts-msgs";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_spatem_ts_msgs/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "e7d68e9c9669ab95ed85df16515a89b7c6d3377328e773790d301193589d0248";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ ros-environment rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "ROS messages for ETSI ITS SPATEM (TS)";
    license = with lib.licenses; [ mit ];
  };
}
