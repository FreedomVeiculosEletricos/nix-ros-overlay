
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, controller-manager, imu-sensor-broadcaster, joint-state-broadcaster, ros2controlcli, topic-tools }:
buildRosPackage {
  pname = "ros-humble-omni-base-controller-configuration";
  version = "2.10.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_robot-release/archive/release/humble/omni_base_controller_configuration/2.10.1-1.tar.gz";
    name = "2.10.1-1.tar.gz";
    sha256 = "9ad82abfa0ab3f6e269de22a9bd2d7dfa9171e27b7ba7e5e15da90815095c09c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager imu-sensor-broadcaster joint-state-broadcaster ros2controlcli topic-tools ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
