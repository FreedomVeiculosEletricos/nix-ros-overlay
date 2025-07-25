
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, gazebo-planar-move-plugin, joint-state-publisher-gui, launch, launch-pal, launch-param-builder, launch-ros, launch-testing-ament-cmake, pal-urdf-utils, realsense2-description, rviz2, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-omni-base-description";
  version = "2.10.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_robot-release/archive/release/humble/omni_base_description/2.10.1-1.tar.gz";
    name = "2.10.1-1.tar.gz";
    sha256 = "648a6c624f77909a0fbdbce196c2eff39e01dd6d2e85c19dfd2fb307a907f66f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ gazebo-planar-move-plugin joint-state-publisher-gui launch launch-pal launch-param-builder launch-ros pal-urdf-utils realsense2-description rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "This package contains the description (mechanical, kinematic, visual,
      etc.) of the omni_base robot.  The files in this package are parsed and used by
      a variety of other components.  Most users will not interact directly
      with this package.";
    license = with lib.licenses; [ asl20 ];
  };
}
